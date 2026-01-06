import 'package:flutter/material.dart';
import 'package:islami/home/colors.dart';
import 'package:islami/l10n/app_localizations.dart';




class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++; // زيادة العد بمقدار 1
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0; // إعادة التصفير
    });
  }

  @override
  Widget build(BuildContext context) {

  


    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/body_sebha_logo.png")),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.sebha_name,style: Theme.of(context).textTheme.bodyMedium,),
        Divider(
          color: AppColors.primaryLightColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              
              child: Text(
                "عدد التسبيحات",
                style:Theme.of(context).textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 50),
            // عرض الرقم
            Expanded(
              flex: 1,
              child: Container(
                padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: AppColors.balckColor, blurRadius: 10)
                  ],
                ),
                child: Text(
                  '$_counter',
                  style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.tealColor,),
                ),
              ),
            ),
            SizedBox(height: 20),
            // زر التسبيح الكبير
            Expanded(
              flex: 3,
              child: GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color:  AppColors.tealColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color:  AppColors.tealColor.withOpacity(0.4), blurRadius: 20, spreadRadius: 5)
                    ],
                  ),
                  child: const Icon(Icons.touch_app, size: 30, color: AppColors.whiteColor),
                ),
              ),
            ),
          ]
        )
        )
      ]
    );
  }
}