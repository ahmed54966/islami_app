import 'package:flutter/material.dart';
import 'package:islami/home/colors.dart';
import 'package:islami/home/settings/lang_bottom.dart';
import 'package:islami/l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget{


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.lang,
          style: Theme.of(context).textTheme.bodyMedium,),

          SizedBox(height: 15),

          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },

            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: AppColors.primaryLightColor,
              borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.eg,
                  style: Theme.of(context).textTheme.bodySmall),
                  Icon(Icons.arrow_drop_down,size: 35,)
                ],
              ),
            ),
          ),


          


        ],
      ),
    );
  }

  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context, 
    builder:(context)=>LangBottomSheet() );
  }
}