import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  
    return Stack(children: [
      Image.asset("assets/images/default_bg.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),

      Scaffold(
        
        
      ),
    ],

    );
  }
}