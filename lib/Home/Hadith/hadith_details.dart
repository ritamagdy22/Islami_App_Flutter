import 'package:eslami/Home/Hadith/hadith.dart';
import 'package:eslami/Home/quran/Item_Soura_Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../My_Theme.dart';
import 'Item_Hadith_Details.dart';

class HadithDetailsScreen extends StatefulWidget {
  static const String RouteName = "Hadith_Details";

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}
  class _HadithDetailsScreenState extends State<HadithDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
        children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),

      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          width: width * 0.9,
          height: height * 0.9,
          margin: EdgeInsets.only(
              left: width * 0.05, right: width * 0.06, bottom: height * 0.06),
          decoration: BoxDecoration(
            color: MythemeData.colorwhite
            ,
            borderRadius: BorderRadius.circular(24),
          ),
          child:ListView.builder(



              itemBuilder: (context,index){
            return ItemHadithDetails(
                content: args.content[index],
            );
            },
itemCount: args.content.length
            ),
        )
      )

    ]);
  }

}
