import 'package:eslami/Home/quran/Soura_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSouraName extends StatelessWidget{
  String name;
  int index;
  ItemSouraName({required this.name, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SouraDetailsScreen.RouteName,
        arguments: SouraDetailsArgs(name: name, index: index)
        );
      },
      child: Text(name,
      style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
    );
    
  }
}