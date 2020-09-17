
import 'package:flutter/material.dart';
import 'package:fotmobb/EachLeague/eachLeague.dart';
import 'package:fotmobb/Matches/matchInfo.dart';
import 'package:fotmobb/Matches/matchInfo_a.dart';
import 'package:fotmobb/News/transferCenter.dart';
import 'package:fotmobb/Playrers/players.dart';
import 'package:fotmobb/clander1.dart';
import 'package:fotmobb/clanderbar.dart';
import 'package:fotmobb/home.dart';
import 'package:fotmobb/tv.dart';
import 'package:splashscreen/splashscreen.dart';

import 'EachTeam/eachTeam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' EPLWORLD',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Color.fromRGBO(95, 31, 117, 1.0)

      ),
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
        seconds: 5,
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