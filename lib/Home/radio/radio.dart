import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Center(
       child: Column(

      children: [
        Padding(padding: EdgeInsets.all(66),),
        Image.asset('assets/images/radiotab.png'),

        Padding(padding: EdgeInsets.all(25),),

        Text('اذاعة القران الكريم', style: TextStyle(
          fontSize: 25,
        ),
        ),

        Padding(padding: EdgeInsets.all(35),),

        Image.asset('assets/images/Button.png'),

      ],
       ),
     ),
    );
  }
}