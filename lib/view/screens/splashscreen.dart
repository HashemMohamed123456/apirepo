import 'package:apiintro/view/screens/homescreen.dart';
import 'package:apiintro/view/screens/loginscreen.dart';
import 'package:apiintro/view_model/data/local/shared_keys.dart';
import 'package:apiintro/view_model/data/local/shared_preference.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>(LocalData.get(key: SharedKeys.isLogin)?? false)?HomeScreen():LoginScreen()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Welcome To Our Application',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),),
      ),
    );
  }
}
