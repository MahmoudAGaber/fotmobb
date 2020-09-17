import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tv extends StatefulWidget {
  @override
  _tvState createState() => _tvState();
}

class _tvState extends State<tv> with SingleTickerProviderStateMixin {

  TextStyle _textStyle=TextStyle(fontSize: 14,fontWeight:FontWeight.w900);
  TextStyle _textStyle1=TextStyle(fontSize: 14,color:Colors.grey,);
  TextStyle _textStyle2=TextStyle(fontSize: 13,color:Colors.green,fontWeight:FontWeight.w400);

  static const TextStyle tapbar =
  TextStyle(fontSize: 15, fontWeight: FontWeight.w500);

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("القنوات الناقلة"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.tune),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.white,
            indicatorColor: Colors.yellow[500],
            labelStyle: tapbar,
            tabs: [
              Tab(
                child: Text("اليوم"),
              ),
              Tab(
                child: Text("الغد"),
              ),
              Tab(
                child: Text("السبت ٢٩/۸"),
              ),
              Tab(
                child: Text("الاحد ٣۰/۸"),
              ),
              Tab(
                child: Text("الاتنين ٣١/۸"),
              ),
              Tab(
                child: Text("الثلاثاء ١/۹"),
              ),
              Tab(
                child: Text("الاربعاء ٢/۹"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            _tv(),
            _tv(),
            _tv(),
            _tv(),
            _tv(),
            _tv(),
            _tv()
          ],
        ),
      ),
    );
  }

  Widget _tv () {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (BuildContext context,index){
        return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/matchInfo');
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20,right: 25),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(children: <Widget>[
                Column(children: <Widget>[
                  Text("7:00 م",style: _textStyle,),
                  Text("مباشر",style: _textStyle2,),
                ],),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(height: 28,width: 28,
                          child: Image.asset("assets/541.jpg"),),
                        Text("ريال مدريد")
                      ],),
                      SizedBox(height: 8,),
                      Row(children: <Widget>[
                        Container(height: 28,width: 28,
                          child: Image.asset("assets/530.jpg"),),
                        Text(" اتليتكو")
                      ],),
                      SizedBox(height: 8,),
                      Row(children: <Widget>[
                        Text("beIN Sports CONNECT MENA",style: _textStyle1,)
                      ],),
                    ],),
                )
              ],),
            ),
          ),
        );
      }),
    );
  }
}

