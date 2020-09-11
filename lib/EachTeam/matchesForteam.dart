import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class matchesForTeam extends StatefulWidget {
  @override
  _matchesForTeamState createState() => _matchesForTeamState();
}

class _matchesForTeamState extends State<matchesForTeam> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(children: <Widget>[
        Container(color: Colors.grey[200],
            height: 50,width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: <Widget>[Text("المباريات السابقة")],),
            )),
         ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder:(
                BuildContext context,index){
              return Column(children: <Widget>[
                Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 20,bottom: 10),
                      child: Row(children: <Widget>[Text("الاتنين،23سبتمبر2019",style: TextStyle(color: Colors.grey),)],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 95,right: 95),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Text("اتليتكو"),
                        Container(height: 30,width: 30,
                        child: Image.asset("assets/530.jpg"),),
                        Text("3 - 1",style: TextStyle(fontSize: 17),),
                        Container(height: 30,width: 30,
                          child: Image.asset("assets/541.jpg"),),
                        Text("ريال مدريد"),
                      ],),
                    )
                  ],),

                ),
                Divider(height: 10,color: Colors.grey,)
              ]
              );
    }
        ),
        Container(color: Colors.grey[200],
            height: 50,width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: <Widget>[Text("المباريات المقبلة")],),
            )),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 6,
            itemBuilder:(
                BuildContext context,index){
              return Column(children: <Widget>[
                Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 20,bottom: 10),
                      child: Row(children: <Widget>[Text("الاتنين،23سبتمبر2019",style: TextStyle(color: Colors.grey),)],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 95,right: 95),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("اتليتكو"),
                          Container(height: 30,width: 30,
                            child: Image.asset("assets/530.jpg"),),
                          Text("8:30 م",style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                          Container(height: 30,width: 30,
                            child: Image.asset("assets/541.jpg"),),
                          Text("ريال مدريد"),
                        ],),
                    )
                  ],),
                ),
                Divider(height: 10,color: Colors.grey,)
              ]
              );
            }
        ),


    ]
      )
    );
  }
}
