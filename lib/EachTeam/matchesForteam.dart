import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class matchesForTeam extends StatefulWidget {
  @override
  _matchesForTeamState createState() => _matchesForTeamState();
}

class _matchesForTeamState extends State<matchesForTeam> {

  TextStyle head = TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey[500]);
  TextStyle number = TextStyle(fontSize: 20,);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(children: <Widget>[
        Container(color: Colors.grey[200],
            height: 50,width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: <Widget>[Text("المباريات السابقة",style: head,)],),
            )),
         ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder:(
                BuildContext context,index){
              return Column(children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/matchInfo_a');
                  },
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 20,bottom: 10),
                        child: Row(children: <Widget>[Text("الاتنين،23سبتمبر2019",style: content2)],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90,right: 90),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text("اتليتكو",style: content,),
                          Container(height: 30,width: 30,
                          child: Image.asset("assets/530.jpg"),),
                          Text("3 - 1",style: TextStyle(fontSize: 17),),
                          Container(height: 30,width: 30,
                            child: Image.asset("assets/541.jpg"),),
                          Text("ريال مدريد",style: content,),
                        ],),
                      )
                    ],),

                  ),
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
              child: Row(children: <Widget>[Text("المباريات المقبلة",style: head,)],),
            )),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 6,
            itemBuilder:(
                BuildContext context,index){
              return Column(children: <Widget>[
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/matchInfo');
                },
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 20,bottom: 10),
                        child: Row(children: <Widget>[Text("الاتنين،23سبتمبر2019",style: content2,)],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 88,right: 88),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("اتليتكو",style: content,),
                            Container(height: 30,width: 30,
                              child: Image.asset("assets/530.jpg"),),
                            Text("3:30 م",style: TextStyle(fontSize: 15,color: Colors.grey[700]),),
                            Container(height: 30,width: 30,
                              child: Image.asset("assets/541.jpg"),),
                            Text("ريال مدريد",style: content,),
                          ],),
                      )
                    ],),
                  ),
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
