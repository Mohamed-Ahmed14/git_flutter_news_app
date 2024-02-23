import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/view/screens/component/new_widget.dart';
import 'package:news_app/view_model/cubit/news_cubit.dart';
import 'package:news_app/view_model/cubit/news_state.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {

    NewsCubit.get(context).callApiRequest();

    return BlocBuilder<NewsCubit,NewsState>(
      builder: (context, state) {
        var cubit=NewsCubit.get(context);
        return Visibility(
          visible: state is! GetNewsLoadingState,
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.separated(
              padding: EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return NewWidget(article: cubit.news[index],);
              }, separatorBuilder: (context, index) {
            return SizedBox(height: 10,);
          }, itemCount: cubit.news.length),
        );
      },

    );
  }
}
