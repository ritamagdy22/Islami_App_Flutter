import 'package:eslami/Home/Hadith/hadith.dart';
import 'package:eslami/Home/Hadith/hadith_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHadithaName extends StatelessWidget{

  Hadith hadeth;
  ItemHadithaName({required this.hadeth,});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadithDetailsScreen.RouteName,
            arguments:hadeth

        );
      },
      child: Text(hadeth.title,
      style: Theme.of(context).textTheme.headline2,
        textAlign: TextAlign.center,
      ),
    );
    
  }
}