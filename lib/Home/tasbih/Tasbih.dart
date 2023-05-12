import 'package:eslami/My_Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class TasbihTab extends StatefulWidget{

  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  int tasbehcounter =0;

  List<String>TasbihList=[
    "سبحان الله",
    "لا اللة الا الله",
    "الحمد لله",
    "الله اكبر",
    "لا حول ولا قوة الا بالله"];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      child: SizedBox(
        width: double.infinity,

        child:GestureDetector(
          onTap: (){
            onTasbihTab();
          },
          child: Column(
            children: [
              Image.asset('assets/images/seb7akbira.png'),
              Padding(padding: EdgeInsets.all(16),),
              GestureDetector(
                onTap: (){
                  onTasbihTab();
                },
                child:
                Text("عدد التسابيح",
                 style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: MythemeData.LightPrimary,
                  borderRadius: BorderRadius.circular(26),
                  ),
                    child: Text("$tasbehcounter",
                   style:
                  TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold
                  ),),

                ),
              ),

              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: MythemeData.LightPrimary,
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Text(TasbihList[index],
                    style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),

                ),
              ),


              Padding(padding: EdgeInsets.all(35),),
            ],
          ),
        ),
      ),
    );
  }


 void onTasbihTab(){
    tasbehcounter++;
    if(tasbehcounter %33==0 ){
      index++;
    }
    if(index == TasbihList.length)
    {
    index =0;
    }
    setState(() {
    });

 }

 

}