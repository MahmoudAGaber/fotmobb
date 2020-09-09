import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fotmobb/Matches/LeagueN.dart';
import 'package:fotmobb/LeagueDetailsD.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'clander.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:hijri_picker/hijri_picker.dart';
import 'package:table_calendar/table_calendar.dart';

class matches extends StatefulWidget {
  @override
  _matchesState createState() => _matchesState([
    LeagueN("AustrliaPremierLeague","assets/12.jpg", true),
    LeagueN("AustrliaPremierLeague","assets/12.jpg", true),
    LeagueN("CandaPremierLeague","assets/12.jpg", true),
    LeagueN("ChinePremierLeague","assets/12.jpg", true)
      ]);
}


class _matchesState extends State<matches> with SingleTickerProviderStateMixin {

  var selectedDate = new HijriCalendar.now();
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

  static const TextStyle tapbar =
  TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  bool isSwitched = false;
  List<LeagueN> _list;
  _matchesState(this._list);
  TabController tabController;

  DateTime dateScheduale;
  var today = '';
  var yesterday = '';
  var oneDayAgo = '';
  var twoDaysAgo = '';
  var tomorrow = '';
  var oneDayThen = '';
  var twoDaysThen = '';
  var threeDayThen = '';
  var fourDayThen = '';
  var fiveDayThen = '';
  List<Widget> tapList;
  _OnExpansion(int index, bool isExpanded) {
    setState(() {
      _list[index].expanded = !(_list[index].expanded);
    });
  }

  static const TextStyle tapbar1 =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w600);

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 11, vsync: this);
    //getTapDays
    setState(() {
      initializeDateFormatting("ar_SA", null).then((_) {
        var now = new DateTime.now();
        DateFormat.MEd('ar_SA').format(now);

        today =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 0)));
        yesterday =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 1)));
        oneDayAgo =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 2)));
        twoDaysAgo =
            DateFormat.MEd('ar_SA').format(now.subtract(new Duration(days: 3)));
        tomorrow = DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 1)));
        oneDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 2)));
        twoDaysThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 3)));
        threeDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 4)));
        fourDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 5)));
        fiveDayThen =
            DateFormat.MEd('ar_SA').format(now.add(new Duration(days: 6)));

        List daysList = [
          today,
          yesterday,
          oneDayAgo,
          twoDaysAgo,
          tomorrow,
          oneDayThen,
          twoDaysThen,
          threeDayThen,
          fourDayThen,
          fiveDayThen
        ];
      });
    });

    /*for(var i in daysList){
      tapList.add(Tab(text: i,));
    }*/
    tabController.animateTo(3,
        duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var selectedDate = new HijriCalendar.now();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                  size: 22,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_vert),
              ],
            ),
          )
        ],
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("EPLWORLD"),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          labelColor: Colors.white,
          indicatorColor: Colors.yellow[500],
          labelStyle: tapbar,
          tabs: [
            Tab(
             text: "الاتنين ٢٤/٧ ",
            ),
            Tab(
              child:Text("الثلائاء ٢٥/۸"),
            ),
            Tab(
              child:Text("الامس"),
            ),
            Tab(
              child:Text("اليوم"),
            ),
            Tab(
              child:Text("الغد"),
            ),
            Tab(
              child:Text("السبت ٢٩/۸"),
            ),
            Tab(
              child:Text("الاحد ٣۰/۸"),
            ),
            Tab(
              child:Text("الاتنين ٣١/۸"),
            ),
            Tab(
              child:Text("الثلاثاء ١/۹"),),
            Tab(
              child:Text("الاربعاء ٢/۹"),
            ),
            Tab(
              text: "التقويم",
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 110.0,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 28.0),
                    child: CircleAvatar(
                      radius: 13.0,
                      backgroundImage: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 26.0),
                    child: Text(
                      "اسم المستخدم",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.tv), iconSize: 25.0, onPressed: null),
              title: Text(
                "الجدول التلفزيوني",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.loop), iconSize: 25.0, onPressed: null),
              title: Text(
                "الانتقالات",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Divider(
              height: 2,
            ),
               Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      ListTile(
                        leading: IconButton(
                            icon: Icon(Icons.attach_money),
                            iconSize: 25.0,
                            onPressed: null),
                        title: Text(
                          "ازالة الاعلانات",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      ListTile(
                        leading: IconButton(
                            icon: Icon(Icons.brightness_4),
                            iconSize: 25.0,
                            onPressed: null),
                        title: Text(
                          "الوضع الليلي",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            }),
                      ),
                      ListTile(
                        leading: IconButton(
                            icon: Icon(Icons.settings),
                            iconSize: 25.0,
                            onPressed: null),
                        title: Text(
                          "الاعدادات",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ]),
              ),
          ],
        ),
      ),
      /* new Scaffold(
              body: _expansionPanel(),
            ),
            new Scaffold(
              body: _expansionPanel(),
            ),
            new Scaffold(
              body: _expansionPanel(),
            ),
            new Scaffold(

              body: _expansionPanel(),
            ),
            new Scaffold(
              body: _expansionPanel(),
            ),
            new Scaffold(

              body: _expansionPanel(),
            ),
            new Scaffold(

              body: _expansionPanel(),
            ),
            new Scaffold(

              body: _expansionPanel(),
            ),*/
      body: TabBarView(controller: tabController, children: [
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
        _tabBarPage(),
       GestureDetector(
         onTap: ()=> _selectDate(context) ,
       )
      ]),
    );
  }

  _expansionPanel() {
    List<ExpansionPanel> MyList = [];
    for (int i = 0, ii = _list.length; i < ii; i++) {
      var expansiondata = _list[i];
      MyList.add(ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpaneded) {
            return Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          MdiIcons.soccer,
                          size: 25,
                        ),
                        title: Text(expansiondata.leagueName),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                )
              ],
            );
          },
          body: Container(
            height: 100.0,
            child: Column(children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("انبي"),
                      Icon(MdiIcons.soccer),
                      Text("9:00"),
                      Icon(MdiIcons.soccer),
                      Text("سموحه"),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          isExpanded: expansiondata.expanded));
    }
    return new Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.all(8.0),
                child: new ExpansionPanelList(
                    children: MyList, expansionCallback: _OnExpansion))));
  }

  Widget _tabBarPage() {
    return ListView.builder(
      itemBuilder: (widget, indx) => _fullTile(indx),
      itemCount: leaguen.length
    );
  }

  Widget _fullTile(int index) {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: true,
        title: GestureDetector(onTap: (){
          Navigator.pushNamed(context, '/eachLeague');
        },
          child: Row(
            children: [
              Container(
                  width: 35, height: 30, child: Image.asset(leaguen[index].img)),
              SizedBox(
                width: 10,
              ),
              Text(leaguen[index].leagueName
                ,
                style: TextStyle(color: Colors.black, fontSize: 16),
              )
            ],
          ),
        ),
        children: [
          _tileItem(),
        ],
      ),
    );
  }

  Widget _tileItem() {
    return Padding(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: leaguedetails.length,
        itemBuilder: (widget, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/matchInfo');
            },
            child: Padding(
              padding: const EdgeInsets.only(left:75,right:75,bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(leaguedetails[index].firstTeam),
                  Container(
                    width: 30,
                    height: 25,
                    child: Image.asset(leaguedetails[index].urlFirst),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Center(child: Text(leaguedetails[index].time)),
                  SizedBox(width: 6),
                  Container(
                    width: 30,
                    height: 25,
                    child: Image.asset(leaguedetails[index].urlSecond),
                  ),
                  Text(leaguedetails[index].seconTeam),
                ],
              ),
            ),
          );
        },
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
    );
  }
}


