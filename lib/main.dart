import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fotmobb/EachLeague/eachLeague.dart';
import 'package:fotmobb/EachTeam/allDeatails.dart';
import 'package:fotmobb/EachTeam/teamNews.dart';
import 'package:fotmobb/Matches/matchEvent_a.dart';
import 'package:fotmobb/Matches/matchInfo.dart';
import 'package:fotmobb/Matches/matchInfo_a.dart';
import 'package:fotmobb/News/transferCenter.dart';
import 'package:fotmobb/News/webView.dart';
import 'package:fotmobb/Playrers/players.dart';
import 'package:fotmobb/clander1.dart';
import 'package:fotmobb/clanderbar.dart';
import 'package:fotmobb/colors.dart';
import 'package:fotmobb/home.dart';
import 'package:fotmobb/setting.dart';
import 'package:fotmobb/tv.dart';
import 'package:splashscreen/splashscreen.dart';
import 'EachTeam/eachTeam.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

import 'More.dart';


void main() {
  runApp(MyApp());
}

  ThemeData _themeDataDark=ThemeData(
    accentColor: Colors.white,
    brightness: Brightness.dark,
    indicatorColor: Colors.yellow,
    fontFamily: 'DroidKufi',

   );

ThemeData _themeDatalight=ThemeData(
  primaryColor: Colors.white,
  accentColor: Colors.black,
  brightness: Brightness.light,
  indicatorColor: Colors.yellow,
  fontFamily: 'DroidKufi',

);
bool _light=true;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' EPLWORLD',
        theme: _light?_themeDatalight:_themeDataDark,
      home: MyHomePage(title: 'FotMob'),
        routes: <String, WidgetBuilder>{
          "/matchInfo": (BuildContext context) => new matchInfo(),
          "/matchInfo_a": (BuildContext context) => new matchInfo_a(),
          "/eachLeague": (BuildContext context) => new eachLeague(),
          "/eachTeam": (BuildContext context) => new eachTeam(),
          "/players": (BuildContext context) => new players(),
          "/transferCenter": (BuildContext context) => new transferCenter(),
          "/clanderbar": (BuildContext context) => new clanderbar(),
          "/tv": (BuildContext context) => new tv(),
          "/matchEvent_a": (BuildContext context) => new MatchEvent_a(),
          "/setting": (BuildContext context) => new setting(),
          "/teamNews": (BuildContext context) => new teamNews(),
          "/More": (BuildContext context) => new More(),
          "/allDetails": (BuildContext context) => new allDetaials(),
          "/webView": (BuildContext context) => new webView(),

        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
Widget build(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(top: 150),
      child: new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new home(),
        image: new Image.asset('assets/EPL-Logo.png',),
        backgroundColor: Colors.white,
        photoSize: 110.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Theme.of(context).primaryColor,
      ),
    ),
  );
}
}