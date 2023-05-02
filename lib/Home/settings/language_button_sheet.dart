import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageButtonSheet extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(9),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English",
              style: Theme.of(context).textTheme.subtitle1,),
              Icon(Icons.check,color: Theme.of(context).primaryColor,)
            ],
          ),
          SizedBox(height: 12,),
          Text("Arabic",
            style: Theme.of(context).textTheme.subtitle1,),
        ],
      ),
    );
  }
}