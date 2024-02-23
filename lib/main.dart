


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/view/screens/news_screen.dart';
import 'package:news_app/view_model/cubit/news_cubit.dart';
import 'package:news_app/view_model/data/network/dio_helper.dart';

void main(){

  WidgetsFlutterBinding.ensureInitialized();



  DioHelper.init();

  runApp(
     MultiBlocProvider(
       providers: [
         BlocProvider(create: (context) => NewsCubit(),),
       ],
       child: const MaterialApp(
          debugShowCheckedModeBanner: false,

           home: NewsScreen(),
         ),
     ));
}