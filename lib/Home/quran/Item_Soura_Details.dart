import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSouraDetails extends StatelessWidget{
  String text;
ItemSouraDetails({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
child: Text(text,
style:  Theme.of(context).textTheme.subtitle1,
textAlign: TextAlign.center,)

      ,

    );
  }
}