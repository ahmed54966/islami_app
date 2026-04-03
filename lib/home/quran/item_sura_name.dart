import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemSuraName extends StatelessWidget{
String name;
int index;
ItemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Navigator.pushNamed(context, '/sura_details',
          arguments: SuraDetailesArgs
          (name: name, index: index));
      },
      child: Text(name,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,),
    );
  }
}


class SuraDetailesArgs{
  String name;
  int index;
  SuraDetailesArgs({required this.name,required this.index});
}
      