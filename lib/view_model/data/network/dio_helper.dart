

import 'package:dio/dio.dart';
import 'package:news_app/view_model/data/network/end_points.dart';

class DioHelper{
  static Dio? dio;

  static init()
  {
    dio=Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> get({required String endPoint,Map<String,dynamic>? queryParameters,Map<String,dynamic>? body,Map<String,dynamic>? headers}){
    try{
      dio!.options.headers = headers;
      return dio!.get(endPoint,
        queryParameters: queryParameters,
        data: body
      );
    }catch(e)
    {
        rethrow;
    }
  }

  static Future<Response> post ({required String endPoint,Map<String,dynamic>? queryParameters,Map<String,dynamic>? body,Map<String,dynamic>? headers}){

    try{
      dio!.options.headers = headers;
      return dio!.post(endPoint,
        queryParameters: queryParameters,
        data: body,
      );
    }catch(e){
      rethrow;
    }

  }

  static Future<Response> put ({required String endPoint,Map<String,dynamic>? queryParameters,Map<String,dynamic>? body,Map<String,dynamic>? headers}){

    try{
      dio!.options.headers = headers;
      return dio!.put(endPoint,
        queryParameters: queryParameters,
        data: body,
      );
    }catch(e){
      rethrow;
    }

  }

  static Future<Response> patch ({required String endPoint,Map<String,dynamic>? queryParameters,Map<String,dynamic>? body,Map<String,dynamic>? headers}){

    try{
      dio!.options.headers = headers;
      return dio!.patch(endPoint,
        queryParameters: queryParameters,
        data: body,
      );
    }catch(e){
      rethrow;
    }

  }

  static Future<Response> delete ({required String endPoint,Map<String,dynamic>? queryParameters,Map<String,dynamic>? body,Map<String,dynamic>? headers}){

    try{
      dio!.options.headers = headers;
      return dio!.delete(endPoint,
        queryParameters: queryParameters,
        data: body,
      );
    }catch(e){
      rethrow;
    }

  }
}

