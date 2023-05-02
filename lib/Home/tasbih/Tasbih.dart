import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbihTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(



        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [



          Image.asset('assets/images/seb7akbira.png'),

          Padding(padding: EdgeInsets.all(10),),

          Text('عدد النسابيح',textAlign: TextAlign.center, style: TextStyle(
            fontSize: 25,

          ),
          ),


          Padding(padding: EdgeInsets.all(35),),




        ],
      ),
    );
  }
}