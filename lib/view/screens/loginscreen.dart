import 'dart:convert';

import 'package:apiintro/model/quotemodel/qoute_model.dart';
import 'package:apiintro/view/screens/homescreen.dart';
import 'package:apiintro/view_model/data/local/shared_keys.dart';
import 'package:apiintro/view_model/data/local/shared_preference.dart';
import 'package:apiintro/view_model/data/network/dio_helper.dart';
import 'package:apiintro/view_model/data/network/end_points.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState(){
    super.initState();
    callApi();
  }
  Dio dio=Dio();
  void callApi()async{
    final Response response=await DioHelper.get(endPoint: EndPoints.quoteOfTheDay,);
    QuoteModel quoteModel=QuoteModel.fromjson(response.data);
    print(quoteModel.quote?.body);
    QuoteModel.globalobject=quoteModel;
setState(() {

});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text('${QuoteModel.globalobject?.quote?.body}',style: TextStyle(fontSize:40,fontWeight: FontWeight.w500),)),
          ),
        ),
      ),);
  }
}
