import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fotmobb/Matches/LeagueN.dart';
import 'package:fotmobb/Matches/preConfron.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



import 'matchEvent_a.dart';

class matchInfo_a extends StatefulWidget {
  final LeagueN match;

  matchInfo_a({this.match});

  @override
  _matchInfo_aState createState() => _matchInfo_aState();
}

class _matchInfo_aState extends State<matchInfo_a> with TickerProviderStateMixin {

  TextStyle _textStyle=TextStyle(color: Colors.grey[500],fontSize: 13);
  TextStyle _textStyle1=TextStyle(fontSize: 17);
  TextStyle _textStyle2=TextStyle(color: Colors.grey[500],fontSize: 15);


  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 18,fontWeight: FontWeight.w400);

  static const TextStyle tapbar = TextStyle(fontSize: 13, fontWeight: FontWeight.w500);
  TextStyle head = TextStyle(fontSize: 16, );

  bool chContaier = false;

  ScrollController _scrollController = new ScrollController();

  TabController tabController;
  int _selectedIndex = 0;

  AnimationController animationController;
  Animation<double> _animation;

  @override
  void initState() {
    tabController = new TabController(length: 6, vsync: this);
    tabController.addListener(() {
      setState(() {
        _selectedIndex=tabController.index;
      });
      print(tabController.index.toString());
    });

    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        Directionality(
          textDirection: TextDirection.rtl,
          child: SliverAppBar(
            elevation: 0.0,
            actions: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.more_vert, color: Colors.white),
                      onPressed: null),
                ],
              )
            ],
            expandedHeight: 120.0,
            pinned: true,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(bottom: 63,left: 40),
                child: Stack(
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Icon(Icons.share, color: Colors.white),
                            onPressed: null),
                      ],),
                  ],

                ),
              ),
              titlePadding: EdgeInsets.only(top: 10),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(bottom:8 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            width: 40,
                            height: 30,
                            child: Image.asset("assets/530.jpg")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '1 - 3',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                            width: 40,
                            height: 30,
                            child: Image.asset("assets/541.jpg")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: SliverPersistentHeader(
            delegate: _SliverAppBarDelegate1(
                minHeight: 82.0,
                maxHeight: 87.0,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(right: 40,left: 15),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "اتليتكو ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "نهاية المبارة ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "ريال مدريد ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                      ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110,right: 110),
                        child: Container(
                          height: 48,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                            Column(children: <Widget>[
                              Text("مارسيلو 22",style: TextStyle(color: Colors.white,fontSize: 12))
                            ],),
                                Column(children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Icon(MdiIcons.soccer,size: 15,color: Colors.white,),
                                  ),
                                ],),

                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                Text("مارسيلو 21\nمارسيلو55",style: TextStyle(color: Colors.white,fontSize: 12))
                              ],)
                          ],),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: DefaultTabController(
            length: 2,
            child: SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(

                  TabBar(isScrollable: true, controller: tabController,
                      onTap: (index){
                        setState(() {
                          if(index==1){

                          }
                        });
                      },
                      tabs: [
                        Tab(
                          child:Text(" الوسائط",style: tapbar,),
                        ),
                        Tab(
                          child:Text("احداث المبارة",style: tapbar,),
                        ),
                        Tab(
                          child:Text("التغطية المباشرة",style:tapbar,),
                        ),
                        Tab(
                          child:Text("تشكيلة",style: tapbar,),
                        ),
                        Tab(
                          child:Text("احصائيات",style: tapbar,),
                        ),
                        Tab(
                          child:Text("المواجهات السابقة",style: tapbar,),
                        ),
                      ])),
            ),
          ),
        ),


      ];
    }

    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: _sliverBuilder,
            body: new TabBarView(controller: tabController, children: [
              Directionality(
                textDirection: TextDirection.ltr,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListView.builder(
                    itemCount: 6,
                      itemBuilder:(BuildContext context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: GestureDetector(
                        onTap: (){
                         _launchURL();
                        },
                        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        child:Container(
                          height: 100,
                          child: Row(children: <Widget>[
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                  Row(children: <Widget>[
                                    Text("1-0 Phippe Coutiho 21'")
                                  ],),
                                    SizedBox(height: 5,),
                                    Row(children: <Widget>[
                                      Text("streamable.com",style: TextStyle(color: Colors.grey,fontSize: 13),)
                                    ],)
                                ],),
                              ),
                            ),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width*0.338,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Container(
                                      height: 25,width: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius: BorderRadius.all(Radius.circular(100))),
                                      child: Icon(Icons.play_arrow,color: Colors.white,size: 17,)),
                                ),
                              ],)
                            )
                          ],),
                        )
                        ),
                      ),
                    );
                  }),
                ),
              ),
              ListView(children: <Widget>[
                MatchEvent_a()
              ]
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: 10),
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          child: Row(children: <Widget>[
                            VerticalDivider(thickness:2),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Match ends,Madrid 3,Athlitco 1 ."),
                            ),
                          ],),
                        ),
                      ),
                      ListView(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                          children:_list(context)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          child: Row(children: <Widget>[
                            VerticalDivider(thickness:2),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("First Half begins"),
                            ),
                          ],),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          child: Row(children: <Widget>[
                            VerticalDivider(thickness:2),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Lineups are annonced and players are warming up"),
                            ),
                          ],),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        color: Colors.green[400],
                        child: Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Row(
                            children: <Widget>[
                            Text("ريال مدريد",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,),),
                              SizedBox(width: 100,),
                              Text("4-2-3-1",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,)),
                          ],),
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,height: 850,
                          child: Image.asset("assets/green.jpg",fit: BoxFit.cover,),),
                          Positioned(right:MediaQuery.of(context).size.width*0.4,
                              top: 5,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.01,
                              top: 90,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.25,
                              top: 90,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.55,
                              top: 90,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.8,
                              top: 90,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width* 0.55,
                              top: 175,
                            child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.25,
                              top: 175,
                            child: _players()
                          ),

                          Positioned(
                            right: MediaQuery.of(context).size.width*0.05
                            ,top: 250,
                            child: _players(),),

                          Positioned(
                            right: MediaQuery.of(context).size.width*0.4,
                            top: 245,
                            child: _players(),),

                          Positioned(
                            right:MediaQuery.of(context).size.width*0.75,
                            top: 250,
                            child: _players(),),

                          Positioned(
                            right: MediaQuery.of(context).size.width*0.4,
                            top: 320,
                            child: _players(),),

                          Positioned(
                            right: MediaQuery.of(context).size.width*0.4,
                            top: 420,
                            child: _players(),),

                          Positioned(
                            right:MediaQuery.of(context).size.width*0.75,
                            top: 490,
                            child: _players(),),


                          Positioned(
                            right: MediaQuery.of(context).size.width*0.4,
                            top: 490,
                            child: _players(),),

                          Positioned(
                            right: MediaQuery.of(context).size.width*0.05,
                            top: 490,
                            child: _players(),),

                          Positioned(right:MediaQuery.of(context).size.width*0.25,
                              top: 560,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width* 0.55,
                              top: 560,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.01,
                              top: 640,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.25,
                              top: 640,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.55,
                              top: 640,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width*0.8,
                              top: 640,
                              child: _players()
                          ),

                          Positioned(right:MediaQuery.of(context).size.width* 0.4,
                              top: 720,
                              child: _players()
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        color: Colors.green[400],
                        child: Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Row(
                            children: <Widget>[
                              Text("ريال مدريد",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,),),
                              SizedBox(width: 100,),
                              Text("4-2-3-1",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,)),
                            ],),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Text("مقاعد الاحتياط والمدرب",style: TextStyle(fontSize: 17),),
                        ],),
                      ),
                      Container(
                        height: 1060,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                      ListView.builder(
                                        physics: ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: 9,
                                          itemBuilder: (BuildContext context,index){
                                            return Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(width: 45,height: 45,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.all(Radius.circular(100),),
                                                      child: Image.asset("assets/Marcelo.jpg"),
                                                    ),
                                                  ),
                                                  Container(width: 80,
                                                          child: Center(
                                                            child: Column(
                                                              children: <Widget>[
                                                                Text(" 12 مارسيلو ",overflow: TextOverflow.visible,),
                                                                Text("مدافع",style: _textStyle,)],
                                                            ),
                                                          ))
                                                ],

                                              ),
                                            );
                                      }
                                    ),


                              ],),
                            ),
                             Expanded(
                               child: Column(
                                children: <Widget>[
                                ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: 8,
                                    itemBuilder: (BuildContext context,index){
                                      return Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            Container(width: 45,height: 45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                border: Border.all(width: 1,color: Colors.grey)
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(100),),
                                                child: Image.asset("assets/Marcelo.jpg"),
                                              ),
                                            ),
                                            Container(width: 80,
                                                    child: Center(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(" 12 مارسيلو ",overflow: TextOverflow.visible,),
                                                        Text("مدافع",style: _textStyle,)],
                                                      ),
                                                    ))
                                          ],

                                        ),
                                      );
                                    }),


                            ],),
                             ),
                        ],),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: <Widget>[
                          Text("اللاعبون المصابون والمطردون",style: TextStyle(fontSize: 17),),
                        ],),
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: Column(
                                children: <Widget>[
                                  ListView.builder(
                                      physics: ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 2,
                                      itemBuilder: (BuildContext context,index){
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: <Widget>[
                                              Container(width: 45,height: 45,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    border: Border.all(width: 1,color: Colors.grey)
                                                ),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(100),),
                                                  child: Image.asset("assets/Marcelo.jpg"),
                                                ),
                                              ),
                                              Container(width: 120,
                                                  child: Center(
                                                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: <Widget>[
                                                        Text(" 12 مارسيلو ",overflow: TextOverflow.visible,),
                                                        Center(child: Text("اصابه في الفرده اليمني   ",style: _textStyle,))],
                                                    ),
                                                  ))
                                            ],

                                          ),
                                        );
                                      }
                                  ),


                                ],),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          color: Colors.grey[200],
                          width: MediaQuery.of(context).size.width,
                          height: 300,),
                      )
                    ],
                  )
                    ],
                  ),
              ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Text("السيطرة علي الكرة",style:TextStyle(fontWeight: FontWeight.w600),),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 10),
                    child: Stack(children: <Widget>[
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width*0.9,
                        percent: 0.6,
                        progressColor: Colors.green[600],
                        isRTL: true,
                        lineHeight: 35,
                        backgroundColor: Colors.grey[600],

                      ),
                      Positioned(
                        right: 5,
                        top: 7,
                          child: Text("60%",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                      Positioned(
                          right: MediaQuery.of(context).size.width*0.8,
                          top: 7,
                          child: Text("40%",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),
                    ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20,top: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                              child: Text("10",style: _textStyle1,),
                            ),
                          ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                                child: Text("9",style: _textStyle1,),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                                child: Text("1",style: _textStyle1,),
                              ),
                            ),
                          Container(
                            child: Text("9",style: _textStyle1),
                          ),
                          Container(
                            child: Text("1",style: _textStyle1),
                          ),
                        ],),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                          Text("تسديدات في المرمي",style: _textStyle2,),
                          Text("تسديدات بعيده عن المرمي",style: _textStyle2),
                          Text("ضربات ركنية",style: _textStyle2),
                          Text("مخالفات",style: _textStyle2),
                          Text("تسللات",style: _textStyle2),
                        ],),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Text("2",style: _textStyle1,),
                              ),
                              Container(
                                child: Text("3",style: _textStyle1),
                              ),
                              Container(
                                child: Text("3",style: _textStyle1),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(Radius.circular(8))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                                  child: Text("10",style: _textStyle1,),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.all(Radius.circular(8))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                                  child: Text("2",style: _textStyle1,),
                                ),
                              ),
                            ],),
                      ],),
                    ),
                  )

                ],
              ),
              ListView(
                  children: <Widget>[
                    preConfront()
                  ]),
            ]),
          ),
        ),
      ),
    );
  }
   Widget _players(){
    return Container(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           Container(width: 40,height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100),),
              child: Image.asset("assets/Marcelo.jpg"),
            ),
          ),
          Container(width: 80,
                    child: Text(" 12 مارسيلو ",
                      style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,),overflow: TextOverflow.visible,),
                  )
        ],

      ),
    );

  }
  Widget _oneLine(){
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Container(
        height: 40,
        child: Row(children: <Widget>[
          Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
              child: Text("90"),
            ),
          ),
          SizedBox(width: 20,),
          Text("Second Half ends.Real 3,Athlitco 1.")

        ],
        ),
      ),
    );
  }

  Widget _threeLineC(){
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Container(
              height: 40,
              child: Row(children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                    child: Text("87"),
                  ),
                ),

              ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 150,
                child: Row(children: <Widget>[
                  VerticalDivider(thickness: 2,)
                ],),
              ),
            )
          ],

          ),
          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: MediaQuery.of(context).size.width*0.84,
                height: 80,
                child: Row(
                  children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Text("Attempt missed. pau Victor (GRIONA)right footed shot from outside"
                          " the box is close,but missed to the right.Assisted by Enric Franquesa",overflow: TextOverflow.visible,),
                    ),
                  )
                ],),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                        Container(width: 35,height: 35,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(100),),
                            child: Image.asset("assets/Marcelo.jpg"),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(height: 25,width: 25,
                          child: Image.asset("assets/541.jpg"),)
                      ],),
                    ),
                    Text("مارسيلو")

                ],),
              ),
            ),
            SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(width: 35,height: 35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(100),),
                                child: Image.asset("assets/Marcelo.jpg"),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Container(height: 25,width: 25,
                              child: Image.asset("assets/541.jpg"),)
                          ],),
                      ),
                      Text("مارسيلو")

                    ],),
                ),
              ),
          ],

          )
        ],
      )

      );
  }

  Widget _twoLineC(){
    return Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40,
                  child: Row(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7,right: 7,top: 2,bottom: 2),
                        child: Text("70"),
                      ),
                    ),

                  ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: 150,
                    child: Row(children: <Widget>[
                      VerticalDivider(thickness: 2,)
                    ],),
                  ),
                )
              ],

            ),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.84,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text("Attempt missed. pau Victor (GRIONA)right footed shot from outside"
                                  ,overflow: TextOverflow.visible,),
                          ),
                        )
                      ],),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(width: 35,height: 35,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(100),),
                                  child: Image.asset("assets/Marcelo.jpg"),
                                ),
                              ),
                              SizedBox(width: 8,),
                              Container(height: 25,width: 25,
                                child: Image.asset("assets/541.jpg"),)
                            ],),
                        ),
                        Text("مارسيلو")

                      ],),
                  ),
                ),
              ],

            )
          ],
        )

    );
  }

   List <Widget>_list(BuildContext context){
    var test=List<Widget>();

    test.add(_oneLine());
    test.add(_threeLineC());
    test.add(_twoLineC());
    test.add(_threeLineC());
    test.add(_oneLine());
    test.add(_twoLineC());
    test.add(_oneLine());
    test.add(_threeLineC());
    test.add(_twoLineC());
    test.add(_threeLineC());
    test.add(_oneLine());
    test.add(_twoLineC());

    return test;
   }

}

_launchURL() async {
  const url = 'https://www.google.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;
  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Theme.of(context).primaryColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _SliverAppBarDelegate1 extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate1({
    @required this.minHeight,
    @required this.maxHeight,
    this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate1 oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}