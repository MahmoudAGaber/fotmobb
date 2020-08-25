import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:fotmobb/matchesData.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class matchInfo extends StatefulWidget {
  final matchesData match;

  matchInfo({this.match});

  @override
  _matchInfoState createState() => _matchInfoState();
}

class _matchInfoState extends State<matchInfo> with TickerProviderStateMixin {

  ScrollController _scrollController=new ScrollController();

  TabController tabController;
  AnimationController animationController;
  Animation<double> _animation;

  @override
  void initState() {
    tabController = new TabController(length: 5, vsync: this);

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
        new SliverAppBar(stretch: true,
          pinned: true,
          floating: true,
          expandedHeight: 200.0,
          actions: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.notifications_none,
                ),
                SizedBox(
                  width: 15,
                ),
                FadeTransition(
                  child: Icon(Icons.share),
                  opacity: _animation,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.more_vert),
              ],
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.51,
              child: Row(
                children: [
                  Card(
                    elevation: 0.0,
                    color: Theme.of(context).primaryColor,
                    child: ClipRRect(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Container(
                              width: 80,
                              height: 40,
                              child: Image.asset('assets/530.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),

                  Card(
                    elevation: 0.0,
                    color: Theme.of(context).primaryColor,
                    child: ClipRRect(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 40,
                            child: Image.asset('assets/530.jpg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
   
      ];
    }

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: _sliverBuilder,
          body: new TabBarView(controller: tabController, children: [
            ListView(),
            Scaffold(),
            Scaffold(),
            Scaffold(),
            Scaffold(),
          ]),
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
    @required this.child,
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
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight !=oldDelegate.maxExtent || minHeight != oldDelegate.minExtent;
  }
}
