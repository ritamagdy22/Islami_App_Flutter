import 'package:eslami/Home/Hadith/item_hadith_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../My_Theme.dart';

class HadithTab extends StatefulWidget {

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> hadithlist =[];

  @override
  Widget build(BuildContext context) {
    if(hadithlist.isEmpty){
      LoadHadithTitle();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/7adith.png')),

        Divider(
          color: MythemeData.LightPrimary,
          thickness: 3,
        ),
        Text(
          "Hadith Name",
          style: Theme.of(context).textTheme.headline2,
        ),
        Divider(
          color: MythemeData.LightPrimary,
          thickness: 3,
        ),
        Expanded(
          flex: 3,
          child: hadithlist.isEmpty?
          Center(child: CircularProgressIndicator(),):

          ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color: MythemeData.LightPrimary,
                thickness: 2,
              );
            },
            itemBuilder: (context, index) {
              return ItemHadithaName(hadeth: hadithlist[index]);
            },
            itemCount: hadithlist.length,
          ),
        )


      ],
    );
  }

  void LoadHadithTitle()async{
   String filecontent =await rootBundle.loadString('assets/files/ahadeth.txt');
   List<String> allahadith= filecontent.split('#\r\n');
   for(int i=0; i<allahadith.length; i++){
     List<String>singlehadith = allahadith[i].split('\n');
     String title =singlehadith[0];
     singlehadith.removeAt(0);
     Hadith hadeth = Hadith(title: title, content: singlehadith);
     hadithlist.add(hadeth);
   }
   setState(() {
   });
  }
}

class Hadith{

  String title;
  List <String> content;
  Hadith({required this.title, required this.content});

}