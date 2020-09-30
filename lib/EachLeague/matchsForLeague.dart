import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class matchesForLeague extends StatefulWidget {
  @override
  _matchesForLeagueState createState() => _matchesForLeagueState();
}

class _matchesForLeagueState extends State<matchesForLeague> {

  TextStyle content = TextStyle(fontSize: 13.5, );

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder:(
              BuildContext context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 4,right: 4),
          child: Container(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(10))),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(children: <Widget>[
                    Text("الخميس،14 اغسطس",style: content,)
                  ],),
                ),
                   Column(children: <Widget>[
                          ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                            itemBuilder: (BuildContext context,index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context,'/matchInfo_a');
                            },
                            child: Container(margin: EdgeInsets.only(bottom: 10),
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 60,right:60  ),
                                child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[
                                  Column(crossAxisAlignment:CrossAxisAlignment.end,children: <Widget>[Text("اتليتكو",style:content,)],),
                                  Container(height: 25,width: 30,child: Image.asset("assets/530.jpg"),),
                                  Column(mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[Text("1 - 3",style: TextStyle(fontWeight: FontWeight.w600),)],),
                                  Container(height: 30,width: 35,child: Image.asset("assets/541.jpg"),),
                                  Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[Text("ريال مدريد",style: content,)],),
                                ],),
                              ),
                            ),
                          );
                      }),
                  ],),
              ],),
            ),
          ),
        );
      }),
    );
  }
}
