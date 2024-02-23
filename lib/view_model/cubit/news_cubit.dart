
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/view_model/data/network/dio_helper.dart';
import 'package:news_app/view_model/data/network/end_points.dart';

import '../../model/new.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit():super(InitState());

  static NewsCubit get(context)=>BlocProvider.of<NewsCubit>(context);


  List<String> category = ["business","technology","sports"];
  int tab = 0;

  List<New> news = [];




  void callApiRequest() async
  {
        news.clear();
        
        emit(GetNewsLoadingState());
        
        await DioHelper.get(endPoint: EndPoints.topHeadLines,
          queryParameters: {
            'country' : 'us',
            'category' : category[tab],
          'apiKey': "d4957176a1684a4796df0e783e27bd34",

          }
        ).then((value) {
          for(var i in value.data["articles"])
            {
              news.add(New.fromJson(i));
            }
          emit(GetNewsSuccessState());
        }).catchError((error)
        {
          print(error);
          emit(GetNewsErrorState());
        });

  }

}


