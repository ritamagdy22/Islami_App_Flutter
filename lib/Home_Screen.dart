import 'package:eslami/Home/settings/setting.dart';
import 'package:eslami/Home/tasbih/Tasbih.dart';
import 'package:eslami/Home/Hadith/hadith.dart';
import 'package:eslami/Home/quran/quran_tab.dart';
import 'package:eslami/Home/radio/radio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  static const String routeNAme ='Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Image.asset('assets/images/main_background.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,)

    , Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    backgroundColor:  Colors.transparent,
    title: Text('Islami',
    style: TextStyle(fontSize: 30, color: Colors.black),
    ),
    ),

    bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Theme.of(context).primaryColor

      ),
      child: BottomNavigationBar(
        currentIndex: selectedindex,
      onTap: (index){
          selectedindex =index;
          setState(() {

          });
      },
      items: [
      BottomNavigationBarItem
      (icon: ImageIcon(AssetImage
        ('assets/images/kor2an.png'),),
      label: 'Quran')



        ,BottomNavigationBarItem
          (icon: ImageIcon(AssetImage('assets/images/radio.png'),),
            label: 'radio')

       , BottomNavigationBarItem
          (icon: ImageIcon(AssetImage('assets/images/sebha.png'),),
            label: 'sebha')


        ,BottomNavigationBarItem
          (icon: ImageIcon(AssetImage('assets/images/mos7af.png'),),
            label: 'Hadith')

        ,BottomNavigationBarItem
          (icon: Icon(Icons.settings),
        label: 'Settings'
        )

      ],

      ),
    ),
body: tabs[selectedindex],



    ),
    ],
    );
  }

  List<Widget>tabs=[
    QuranTab(), RadioTab(),TasbihTab(),HadithTab(),SettingTab()

  ];

}