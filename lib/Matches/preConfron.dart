
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'matchEvent_a.dart';

class preConfront extends StatefulWidget {
  @override
  _preConfrontState createState() => _preConfrontState();
}

class _preConfrontState extends State<preConfront> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Column(
        children: <Widget>[
          Container(
            height: 170.0,
            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            width: 40, height: 40, child: Image.asset("assets/530.jpg")),
                        Text("المباريات السابقة"),
                        Container(
                            width: 40, height: 40, child: Image.asset("assets/541.jpg")),
                      ],
                    ),
                  ),
                  Row(children: <Widget>[
                     Container(
                      child: LinearPercentIndicator(
                        width: 372.0,
                        padding: EdgeInsets.all( 20),
                        progressColor: Colors.blue,
                        percent: 0.5,
                        backgroundColor: Colors.grey[600],
                      ),
                    ),]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0,right: 15),
                    child: Row(children: <Widget>[
                      Container(
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Center(child: Text("4",style: TextStyle(color: Colors.white,fontSize: 19),)),
                      ),
                      SizedBox(width: 85,),
                      Column(
                        children: <Widget>[
                          Text("التعادلات",style: TextStyle(fontSize: 17),),
                          Text("36%",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Center(child: Text("5",style: TextStyle(color: Colors.white,fontSize: 19),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Column(
                          children: <Widget>[
                            Text("الفوز",style: TextStyle(fontSize: 17),),
                            Text("36%",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5.0),
                        height:40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                        child: Center(child: Text("5",style: TextStyle(color: Colors.white,fontSize: 19),)),
                      ),
                    ],),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context,index){
                  return GestureDetector(
                    onTap: ()=> MatchEvent_a,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20,left: 20,top: 15,bottom: 10),
                            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                              Text("الجمعه،4 سبتمبر",style: TextStyle(color: Colors.grey[700]),),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(12)),
                                  color: Colors.grey[200],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 3,right: 3),
                                  child: Text("الدوري المصري الممتاز",style: TextStyle(fontSize: 10,color:Colors.grey[700]),),
                                ),
                              )
                            ],
                            ),
                          ),Padding(
                            padding: const EdgeInsets.only(left: 80,right: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("اتليتكو"),
                                Container(
                                  width: 30,
                                  height: 25,
                                  child: Image.asset("assets/530.jpg"),
                                ),

                                Center(child: Text("4 - 2 ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),)),
                                Container(
                                  width: 30,
                                  height: 25,
                                  child: Image.asset("assets/541.jpg"),
                                ),
                                Text("ريال مدريد"),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Divider(height: 2.0,)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
