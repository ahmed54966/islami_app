import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemSuraDetails extends StatelessWidget{
  String content;
  int index;
  ItemSuraDetails({required this.content,required this.index});

  Widget build(BuildContext context) {
    return Text("$content (${index+1})",
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.titleLarge,);
      
  }
}
