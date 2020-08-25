import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fotmobb/matchInfo.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';

import 'matchesData.dart';

class matches extends StatefulWidget {
  @override
  _matchesState createState() => _matchesState([
        matchesData("AustrliaPremierLeague", true),
        matchesData("AustrliaPremierLeague", true),
        matchesData("CandaPremierLeague", true),
        matchesData("ChinePremierLeague", true)
      ]);
}

class _matchesState extends State<matches> with SingleTickerProviderStateMixin {
  bool isSwitched = false;
  List<matchesData> _list;
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

  static const TextStyle tapbar =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w700);

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 11, vsync: this);
    //getTapDays
    var now = new DateTime.now();
    DateFormat('EEE d MMM').format(now);

    today = DateFormat('EEE d MMM').format(now.subtract(new Duration(days: 0)));
    yesterday =
        DateFormat('EEE d MMM').format(now.subtract(new Duration(days: 1)));
    oneDayAgo =
        DateFormat('EEE d MMM').format(now.subtract(new Duration(days: 2)));
    twoDaysAgo =
        DateFormat('EEE d MMM').format(now.subtract(new Duration(days: 3)));
    tomorrow = DateFormat('EEE d MMM').format(now.add(new Duration(days: 1)));
    oneDayThen = DateFormat('EEE d MMM').format(now.add(new Duration(days: 2)));
    twoDaysThen =
        DateFormat('EEE d MMM').format(now.add(new Duration(days: 3)));
    threeDayThen =
        DateFormat('EEE d MMM').format(now.add(new Duration(days: 4)));
    fourDayThen =
        DateFormat('EEE d MMM').format(now.add(new Duration(days: 5)));
    fiveDayThen =
        DateFormat('EEE d MMM').format(now.add(new Duration(days: 6)));
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
              text: twoDaysAgo,
            ),
            Tab(
              text: oneDayAgo,
            ),
            Tab(
              text: "الامس",
            ),
            Tab(
              text: "اليوم",
            ),
            Tab(
              text: "الغد",
            ),
            Tab(
              text: oneDayThen,
            ),
            Tab(
              text: twoDaysThen,
            ),
            Tab(
              text: threeDayThen,
            ),
            Tab(
              text: fourDayThen,
            ),
            Tab(
              text: fiveDayThen,
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
        _tabBarPage(),
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
      itemBuilder: (widget, indx) => _fullTile(),
      itemCount: 6,
    );
  }

  Widget _fullTile() {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Row(
          children: [
            Container(
                width: 35, height: 30, child: Image.asset("assets/12.jpg")),
            SizedBox(
              width: 10,
            ),
            Text(
              "الدوري الاسباني",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )
          ],
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
        itemCount: live.length,
        itemBuilder: (widget, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/matchInfo');
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(live[index].firstTeam),
                  Container(
                    width: 30,
                    height: 25,
                    child: Image.asset(live[index].urlFirst),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Center(child: Text("9:00 pm")),
                  SizedBox(width: 6),
                  Container(
                    width: 30,
                    height: 25,
                    child: Image.asset(live[index].urlSecond),
                  ),
                  Text(live[index].seconTeam),
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

class _live {
  final String firstTeam;
  final String seconTeam;
  final String urlFirst;
  final String urlSecond;

  _live(this.firstTeam, this.seconTeam, this.urlFirst, this.urlSecond);
}

List live = [
  _live('ريال مدريد', 'برشلونه', 'assets/11.jpg', 'assets/530.jpg'),
  _live('ومالك', 'الاهلي', 'assets/11.jpg', 'assets/530.jpg'),
];
