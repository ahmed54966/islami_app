import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => HomeScreen(),
    
  },
      
      debugShowCheckedModeBanner: false,

    );
  }
}