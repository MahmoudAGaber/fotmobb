import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:fotmobb/Matches/MatchEvent.dart';
import 'package:fotmobb/Matches/LeagueN.dart';
import 'package:fotmobb/EachLeague/postions.dart';
import 'package:fotmobb/Matches/preConfron.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:percent_indicator/percent_indicator.dart';

class matchInfo extends StatefulWidget {
  final LeagueN match;

  matchInfo({this.match});

  @override
  _matchInfoState createState() => _matchInfoState();
}

class _matchInfoState extends State<matchInfo> with TickerProviderStateMixin {

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
    tabController = new TabController(length: 3, vsync: this);
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
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
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
              ),
              titlePadding: EdgeInsets.only(bottom: 10),
              centerTitle: true,
              title: Row(
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
                        ' 3:30 م ',
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
        Directionality(
          textDirection: TextDirection.rtl,
          child: SliverPersistentHeader(
            delegate: _SliverAppBarDelegate1(
                minHeight: 45.0,
                maxHeight: 45,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "اتليتكو ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "غدا",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "ريال مدريد ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
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
                  child:Text ("احداث المبارة",style: tapbar,),
                ),
                Tab(
                  child:Text("المراكز",style: tapbar,),
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
              ListView(children: <Widget>[
              MatchEvents()
              ]
              ),
              ListView(children: <Widget>[
                postions()
              ]),
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
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate1 oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
