import 'package:flutter/material.dart';
import 'package:news_app/view_model/cubit/news_cubit.dart';


TextEditingController tab1 = TextEditingController();
class TabBarCustom extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> children;

  const TabBarCustom({required this.tabs,required this.children,super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            TabBar(
               tabs: tabs,
              onTap: (value){
                NewsCubit.get(context).tab=value;
                //NewsCubit.get(context).callApiRequest();
              },
            indicatorSize:TabBarIndicatorSize.tab,
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.grey,),
            Expanded(
              child: TabBarView(
                children: children,
              ),
            )
          ],
          

        ),
    );
  }
}
