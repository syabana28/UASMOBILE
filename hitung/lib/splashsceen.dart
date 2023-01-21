import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hitung/HomePage.dart';


// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget{

@override
  // ignore: library_private_types_in_public_api
  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();
    splashscreenStart();
  }

splashscreenStart() async{
    var duration = const Duration(seconds: 12);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }
@override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[

            Icon(
              Icons.school,
              size: 100.0,
              color: Colors.white,
              ),

              SizedBox(height: 24.0,),

            Text("SEKOLAHKU",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
