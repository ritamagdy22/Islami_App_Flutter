import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHadithDetails extends StatelessWidget{
  String content;
ItemHadithDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
child: Text(content,
style:  Theme.of(context).textTheme.subtitle1,
textAlign: TextAlign.center,)

      ,

    );
  }
}