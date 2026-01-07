import 'package:flutter/material.dart';
import 'package:islami/home/colors.dart';
import 'package:islami/l10n/app_localizations.dart';
import 'package:islami/providers/app_lang_provider.dart';
import 'package:provider/provider.dart';


class LangBottomSheet extends StatefulWidget{


  @override
  State<LangBottomSheet> createState() => _LangBottomSheetState();
}

class _LangBottomSheetState extends State<LangBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppLangProvider>(context);

    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child:provider.appLanguage == "en"?
            getSelectedItemWidget(AppLocalizations.of(context)!.eg):
            getUnselectedItemWidget(AppLocalizations.of(context)!.eg)
          ),
          SizedBox(height: 20),
          
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child:provider.appLanguage == "ar"?
              getSelectedItemWidget(AppLocalizations.of(context)!.ar):
              getUnselectedItemWidget(AppLocalizations.of(context)!.ar)
              ),
              
            
          
        ],
      ),
    );



    
  }

    Widget getSelectedItemWidget(String text){
      return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.primaryLightColor),),
                Icon(Icons.check, color:AppColors.primaryLightColor,size: 35,)
              ],
            );
    }

    Widget getUnselectedItemWidget(String text){
      return  Text(text,
                style: Theme.of(context).textTheme.bodySmall);
    }
}