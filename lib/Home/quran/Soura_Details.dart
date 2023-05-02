import 'package:eslami/Home/quran/Item_Soura_Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../My_Theme.dart';

class SouraDetailsScreen extends StatefulWidget {
  static const String RouteName = "Soura_Details";

  @override
  State<SouraDetailsScreen> createState() => _SouraDetailsScreenState();
}
  class _SouraDetailsScreenState extends State<SouraDetailsScreen> {
  List<String> verses =[];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var args = ModalRoute.of(context)?.settings.arguments as SouraDetailsArgs;
    if(verses.isEmpty){
      LoadFile(args.index);
    }

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
            '${args.name}',
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
          child:
          verses.isEmpty?
              Center(child: CircularProgressIndicator()):
          ListView.separated(

            separatorBuilder: (context,index){
              return Divider(
                color: MythemeData.LightPrimary,
                thickness: 2,
              );
            },


              itemBuilder: (context,index){
            return ItemSouraDetails(text: verses[index]);
            },
itemCount: verses.length,
            ),
      )
    ),

    ]);
  }

  void LoadFile(int index) async{
 String filecontent= await rootBundle.loadString('assets/files/${index+1}.txt');
 List<String> lines =filecontent.split('\n');
  verses=lines;
  print(verses);
  setState(() {

  });
  }
}

class SouraDetailsArgs {
  String name;
  int index;

  SouraDetailsArgs({required this.name, required this.index});
}
