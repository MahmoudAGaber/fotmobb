import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fotmobb/Matches/LeagueN.dart';
import 'package:fotmobb/Matches/preConfron.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


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
                padding: const EdgeInsets.only(bottom:10 ),
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
                minHeight: 80.0,
                maxHeight: 85.0,
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
                        padding: const EdgeInsets.only(left: 90,right: 90),
                        child: Container(
                          height: 48,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                            Column(children: <Widget>[
                              Text("مارسيلو 21\nمارسيلو55",style: TextStyle(color: Colors.white,fontSize: 12))
                            ],),
                              Column(mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                Text("غريزمان20",style: TextStyle(color: Colors.white,fontSize: 12))
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
                          text: " الوسائط",
                        ),
                        Tab(
                          text: "احداث المبارة",
                        ),
                        Tab(
                          text: "التغطية المباشرة",
                        ),
                        Tab(
                          text: "تشكيلة",
                        ),
                        Tab(
                          text: "احصائيات",
                        ),
                        Tab(
                          text: "المواجهات السابقة",
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
              Scaffold(),
              ListView(children: <Widget>[
                MatchEvent_a()
              ]
              ),
              Scaffold(),
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
                            width: MediaQuery.of(context).size.width,height: 800,
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
                        height: 1000,
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
                                                      child: Expanded(
                                                          child: Center(
                                                            child: Column(
                                                              children: <Widget>[
                                                                Text(" 12 مارسيلو ",overflow: TextOverflow.visible,),
                                                                Text("مدافع",style: _textStyle,)],
                                                            ),
                                                          )))
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
                                                child: Expanded(
                                                    child: Center(
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(" 12 مارسيلو ",overflow: TextOverflow.visible,),
                                                        Text("مدافع",style: _textStyle,)],
                                                      ),
                                                    )))
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
    return Column(
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
            child: Expanded(
                child: Center(
                  child: Text(" 12 مارسيلو ",
                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w800,),overflow: TextOverflow.visible,),
                )))
      ],

    );

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