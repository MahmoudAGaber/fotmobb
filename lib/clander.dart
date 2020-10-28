import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:hijri_picker/hijri_picker.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('ar', 'SA'),
        ],
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primaryColor: Colors.brown,
          accentColor: Colors.green,
          brightness: Brightness.dark,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedDate = new HijriCalendar.now();

  @override
  Widget build(BuildContext context) {
    HijriCalendar.setLocal(Localizations
        .localeOf(context)
        .languageCode);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        body: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Text(
                  '${selectedDate.toString()}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
                ),
                new Text(
                  '${selectedDate.fullDate()}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
                ),

              ],
            ),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => _selectDate(context),
          tooltip: 'Pick Date',
          child: new Icon(Icons.event,color: Theme.of(context).primaryColor,),
        ),
      ),
    );
  }

  Future<Null> _selectDate(BuildContext context) async {
    final HijriCalendar picked = await showHijriDatePicker(
      context: context,
      initialDate: selectedDate,

      lastDate: new HijriCalendar()
        ..hYear = 1445
        ..hMonth = 9
        ..hDay = 25,
      firstDate: new HijriCalendar()
        ..hYear = 1438
        ..hMonth = 12
        ..hDay = 25,
      initialDatePickerMode: DatePickerMode.day,
    );
    if (picked != null)
      setState(() {
        selectedDate = picked;
      });
  }
}