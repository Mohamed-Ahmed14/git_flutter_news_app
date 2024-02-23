
import 'package:flutter/material.dart';

import 'component/category_widget.dart';
import 'component/tab_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
       body: SafeArea(
           child:  TabBarCustom(tabs: [
             Tab(
               text:'Business',

             ),
             Tab(
               text:'Technology',
             ),
             Tab(
               text:'Sports',
             ),
           ],
             children: [
               CategoryWidget(),
               CategoryWidget(),
               CategoryWidget(),
             ],
           ),
       ),

    );
  }
}
