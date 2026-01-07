import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth.dart';

class ItemHadethName extends StatelessWidget{
Hadeth hadeth;
ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Navigator.pushNamed(context, '/hadeth_details',
          arguments: hadeth);
      },
      child: Text(hadeth.title,
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
      