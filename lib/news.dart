import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    return Scaffold(
      appBar: AppBar(
        title:Row(mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[Text("الاخبار")],),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          labelColor: Colors.white,
          indicatorColor: Colors.yellow[500],
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Tab(
                child: Text("الدوريات",style: tapbar,),
              ),
            ),
            Tab(
              child: Text("الانتقالات",style: tapbar,),
            ),
            Tab(
              child: Text("الاحدث",style: tapbar,),
            ),
             Tab(
              child: Text("لك",style: tapbar,),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
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



          new Scaffold(),
          new Scaffold(),
          new Scaffold(
            body: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: trend.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Card(
                                semanticContainer: true,
                                elevation: 0.0,
                                child: new Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 4.0),
                                          child: Container(
                                            width: 357,
                                            height: 200,
                                            child: new ClipRRect(
                                              child: Image.asset(
                                                trend[index].imageUrl,
                                                fit: BoxFit.fill,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      trend[index].text,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[

                                          Text(
                                            "  منذ 6 دقائق",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "  FotMob",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                          Icon(
                                            MdiIcons.soccer,
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10,top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "تريند",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                MdiIcons.trendingDown,
                                color: Colors.green,
                              ),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          child: new Card(
                            semanticContainer: true,
                            elevation: 0.0,
                            child: new Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Container(
                                        width: 357,
                                        height: 200,
                                        child: new ClipRRect(
                                          child: Image.asset(
                                            "assets/6.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "Ronaldo Koeman Keen To Make Donny van de Beek His First Barclona Signing",
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        " منذ 6 دقائق",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "  FotMob",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Icon(
                                        MdiIcons.soccer,
                                        size: 15.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: trend.length,
                  itemBuilder:(BuildContext context , index){
                    return Column(
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: <Widget>[
                                          Center(
                                            child: Text(trend[index].text,
                                              style: TextStyle(
                                                  fontSize: 13.0
                                              ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 5),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                Text(
                                                  " منذ 6 دقائق",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "  FotMob",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                                Icon(
                                                  MdiIcons.soccer,
                                                  size: 15.0,
                                                ),
                                              ],
                                            ),
                                          ),

                                        ]
                                        ,
                                      ),
                                    ),
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Container(
                                        width: 150,
                                        height: 80,
                                        child: ClipRRect(
                                          child:
                                          Image.asset(trend[index].imageUrl,fit: BoxFit.fill,),
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                      ),
                                    ],

                                  ),


                                ],

                              ),
                            ),

                          ),

                        ),

                      ],
                    );
                  }
              ),
              Container(
                color: Colors.grey[300],
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8,top: 10,right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "الاحدث",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.access_time,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: trend.length,
                itemBuilder: (BuildContext context, index){
                  return Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Card(
                                semanticContainer: true,
                                elevation: 0.0,
                                child: new Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 4.0),
                                          child: Container(
                                            width: 357,
                                            height: 200,
                                            child: new ClipRRect(
                                              child: Image.asset(
                                                trend[index].imageUrl,
                                                fit: BoxFit.fill,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Text(
                                      trend[index].text,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            " منذ 6 دقائق",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "  FotMob",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey),
                                          ),
                                          Icon(
                                            MdiIcons.soccer,
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              )


            ],

          ),
        ],
      ),
    );
  }
}
