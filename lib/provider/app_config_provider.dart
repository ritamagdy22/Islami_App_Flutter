import 'package:flutter/cupertino.dart';
/*
changenotifier 3andolisterns
yshof fi haga hatet8ir wla la2a
( de data btet8ir fl app kolo )
 */
class AppConfigProvider extends ChangeNotifier{
  String appLangguage ='en';
  void changelanguage(String newLanguage){
    if(newLanguage == appLangguage){
      return ;
    }

    appLangguage=newLanguage;
    /* bt8irli al data kolhaa w btsm3 al ta8ir da kolo  */
    notifyListeners();
  }

}