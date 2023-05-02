import 'package:eslami/Home/settings/Themeing_button_sheet.dart';
import 'package:eslami/Home/settings/language_button_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget{
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.all(12),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       Text("Language",
       style: TextStyle(fontSize: 25)),
       InkWell(
         onTap: (){

           ShowLanguageBottom();

         },
         child: Container(
           margin: EdgeInsets.all(12),
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12)
                 ,color: Theme.of(context).primaryColor

           ),

           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("English",
               style: TextStyle(fontSize: 25)),
               Icon(Icons.arrow_circle_down)

             ],

           ),

         ),
       ),
       SizedBox(height: 12,),
       Text("Themeing",
         style: TextStyle(fontSize: 25)),
       InkWell(
         onTap: (){


           showThemingBottomSheet();

         },
         child: Container(
           margin: EdgeInsets.all(12),
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12)
               ,color: Theme.of(context).primaryColor

           ),

           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Dark",
                 style: TextStyle(fontSize: 25),),
               Icon(Icons.arrow_circle_down)

             ],

           ),

         ),
       ),

     ],

   ),

    );
  }

  void ShowLanguageBottom() {
    showModalBottomSheet(context: context,
        builder: (context){
      return LanguageButtonSheet();
        });


  }

  void showThemingBottomSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return ThemingButtonSheet();
    });
    
  }
}