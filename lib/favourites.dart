import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fotmobb/favourite/favouriteLeague.dart';
import 'package:fotmobb/favourite/favouritePlayer.dart';
import 'package:fotmobb/favourite/favouriteTeam.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> with SingleTickerProviderStateMixin{
  TabController tabController;
  int _selectedIndex = 0;

  static const TextStyle tapbar = TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
  TextStyle _textStyletitle=TextStyle(fontSize: 18);
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex=tabController.index;
      });
      print(tabController.index.toString());
    });
  }

  @override
  bool isSwitched=false;
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar:AppBar(
            actions:<Widget>[
              appbarTeam()
            ],
            backgroundColor: Theme.of(context).primaryColor,
            title: Row(
               children: <Widget>[
                 Text("المفضلة",style: _textStyletitle,)
               ],
            ),
            bottom:TabBar(
              isScrollable: true,
              controller: tabController,
              labelColor: Colors.white,
              indicatorColor: Colors.yellow[500],
              labelPadding: EdgeInsets.only(left: 70),
              indicatorPadding: EdgeInsets.only(left: 70),
              tabs:<Widget>[

                Tab(   child: Text("الفرق",style: tapbar,),
                ),
                Tab(
                  child: Text("اللاعبين",style: tapbar,),
                ),
                Tab(
                  child: Text("الدوريات",style: tapbar,),),

              ],

            ),
          ),
          drawer: Drawer  (
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
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/tv');
                  },
                  child: ListTile(
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
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/transferCenter');
                  },
                  child: ListTile(
                    leading: IconButton(
                        icon: Icon(Icons.loop), iconSize: 25.0, onPressed:null),
                    title: Text(
                      "الانتقالات",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
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
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/setting');
                          },
                          child: ListTile(
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
                        ),
                      ]),
                ),
              ],
            ),
          ),
          body: TabBarView(controller: tabController, children:[
            favouriteTeam(),
            favouritePlayer(),
            favouriteLeague()

      ]

      )
      ),
    );
  }

  addDialog(BuildContext context){
    return showDialog(context: context,builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.only(top: 30,right: 10,left: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          child:Directionality(
            textDirection: TextDirection.rtl,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
                    child: Row(children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_forward,color: Colors.grey[600],),onPressed: (){
                        Navigator.pop(context);
                      },),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration.collapsed(
                            hintText: "البحث عن الفرق،المقابلات،اللاعبين،الاخبار،البطولات",hintStyle: TextStyle(fontSize: 16,),
                          ),
                        ),

                      ),
                    ],),
                  ),
                   Expanded(
                     child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (BuildContext context,index){
                          return Container(
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(children: <Widget>[
                                      Container(height: 30,width: 30,
                                        child: Image.asset("assets/541.jpg"),),
                                      SizedBox(width: 10,),
                                      Text("ريال مدريد")
                                    ],),
                                  ),
                                  IconButton(icon: Icon(Icons.star_border), onPressed: null)
                                ],),
                            ),
                          );
                        }),
                   ),
                ],

              ),
          )
      );
    });
  }

  List<Widget>_list(BuildContext context){
    setState(() {
    var test=List<Widget>();
    tabController.addListener(() {

        _selectedIndex=tabController.index;
      if(tabController.index==0){
        print("hello");
        test.add(appbarTeam());

      }else if(tabController.index ==1){
        print("helloo");
        test.add(appbarPlayer());
      }else
      {
        print("hellooo");
        test.add(appbarLeague());
      }

      return test;
      });
    });



  }
  appbarTeam(){
    return Row(
      children: <Widget>[
        Icon(Icons.edit),
        SizedBox(width: 15,),
        IconButton(icon: Icon(Icons.add),onPressed: (){
          addDialog(context);
        },),
        SizedBox(width: 8,)
      ],
    );
  }
  appbarPlayer(){
    return Row(
      children: <Widget>[
        Icon(Icons.edit),
        SizedBox(width: 15,),
        IconButton(icon: Icon(Icons.add),onPressed: (){
          addDialog(context);
        },),
        SizedBox(width: 8,)
      ],
    );
  }
  appbarLeague(){
    return Row(
      children: <Widget>[
        Icon(Icons.edit),
        SizedBox(width: 15,),
        IconButton(icon: Icon(Icons.add),onPressed: (){
          addDialog(context);
        },),
        SizedBox(width: 8,)
      ],
    );
  }
}
