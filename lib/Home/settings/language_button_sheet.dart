import 'package:eslami/provider/app_config_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageButtonSheet extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(9),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              provider.changelanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",
                style: Theme.of(context).textTheme.subtitle1,),
                Icon(Icons.check,color: Theme.of(context).primaryColor,)
              ],
            ),
          ),
          SizedBox(height: 12,),
          InkWell(
            onTap: (){
              provider.changelanguage('ar');
            },
            child: Text("Arabic",
              style: Theme.of(context).textTheme.subtitle1,),
          ),
        ],
      ),
    );
  }
}