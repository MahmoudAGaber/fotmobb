import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fotmobb/News/forYou.dart';
import 'package:fotmobb/News/latest.dart';
import 'package:fotmobb/drawerrr.dart';
import 'package:fotmobb/trendingData.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class news extends StatefulWidget {
  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> with SingleTickerProviderStateMixin {
  TabController tabController;
  bool isSwitched = false;


  static const TextStyle tapbar =
  TextStyle(fontSize: 17, fontWeight: FontWeight.w500);


  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);

  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
 

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title:Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Row(
              children: <Widget>[
                Text("أخبار")],),
          ),
          bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(left: 50),
            indicatorPadding: EdgeInsets.only(left: 50),
            tabs: <Widget>[
              Tab(
                child: Text("لك",style: tapbar,),
                ),
              Tab(
                child: Text("الاحدث",style: tapbar,),
              ),
              Tab(
                child: Text("انتقالات",style: tapbar,),

              ),
              Tab(
                child: Text("البطولات",style: tapbar,),
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
        body: TabBarView(
          controller: tabController,
          children: [
            new Scaffold(
              body:forYou()
            ),
            new Scaffold(
              body:  latest()
            ),
            new Scaffold(),
            new Scaffold(),


          ],
        ),
      ),
    );
  }
}
