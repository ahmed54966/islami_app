import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth.dart';
import 'package:islami/home/quran/quran.dart';
import 'package:islami/home/radio/radio.dart';
import 'package:islami/home/sebha/sebha.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
  
    return Stack(children: [
      Image.asset("assets/images/default_bg.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,),

      Scaffold(
      
        appBar: AppBar(
          
          title: Text("اسلامي",
          style: Theme.of(context).textTheme.bodyLarge,),
          
        ),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor
          ),


          child: BottomNavigationBar(
            
            currentIndex: selectedIndex,
            onTap: (index){
              setState(() {
                selectedIndex = index ;
              });
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),
              ),
              label: "قران"
              ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),
          ),
          label: "حديث"
          ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),
              ),
              label: "سبحه"
              ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),
          ),
          label: "راديو"
          ),
          
          
              ]
            ),
        ),

        body: tabs[selectedIndex],
        
      ),
    ],

    );
  }

  List<Widget> tabs = [QuranTab(),HadethTab(),SebhaTab(),RadioTab()];





}