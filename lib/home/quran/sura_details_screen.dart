import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/colors.dart';
import 'package:islami/home/quran/item_sura_details.dart';
import 'package:islami/home/quran/item_sura_name.dart';

class SuraDetailsScreen extends StatefulWidget{
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List <String> verses = [];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailesArgs;
    if(verses.isEmpty){
      loadfile(args.index);
    }
    

    return Stack(children: [
      Image.asset("assets/images/default_bg.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),

      Scaffold(
      
        appBar: AppBar(
          
          title: Text(args.name,
          style: Theme.of(context).textTheme.bodyLarge,),
          
        ),
        body: 

        Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
          vertical:MediaQuery.of(context).size.height*0.04 ),
          decoration: BoxDecoration(color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24)),
          child: ListView.builder(itemBuilder: (context,index){
            return ItemSuraDetails(content: verses[index],index: index,);
            
          },
          itemCount: verses.length,
          ),
        ),
      )
    ]
    );
  }

  void loadfile(int index)async{
    String content = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String> lines = content.split("\n");
    for(int i = 0 ; i <lines.length ; i++){
      print(lines[i]);
    }
    verses = lines;
    setState(() {
      
    });
    }
}




      