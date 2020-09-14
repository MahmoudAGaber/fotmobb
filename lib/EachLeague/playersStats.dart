import 'package:flutter/material.dart';

class playersStats extends StatefulWidget {
  @override
  _playersStatsState createState() => _playersStatsState();
}

class _playersStatsState extends State<playersStats> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          itemCount: 8,
            itemBuilder: (BuildContext context,index){
            return Container(
              height: 290,
              child:Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(children: <Widget>[
                  Container(
                    color: Colors.grey[100],
                    height: 130,
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(top: 5,right: 15),
                           child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                            Row(children: <Widget>[ Text("اهداف")]),
                            SizedBox(height:8 ,),
                            Text("ليو ميسي",style: TextStyle(fontSize: 15),),
                            Text("برشلونة",style: TextStyle(color: Colors.grey),),
                            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("10",style: TextStyle(fontSize: 22),),
                              ],)
                      ],),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[ Container(
                            height: 60,width: 60,
                            child: Image.asset("assets/l2.png"))],),
                      )
                ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 8),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                      Row(children: <Widget>[
                        Container(height: 30,width: 30,
                        child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                            child: Image.asset("assets/l2.png",))),
                        SizedBox(width: 5,), Text("سواريز")]),
                      Text("10",style: TextStyle(fontSize: 17),),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                      Row(children: <Widget>[
                        Container(height: 30,width: 30,
                            child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                                child: Image.asset("assets/l2.png",))),
                        SizedBox(width: 5,), Text("مارسيلو")]),
                      Text("10",style: TextStyle(fontSize: 17),),
                    ],),
                  ),
                  Divider(height: 2,),
                 Padding(
                   padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                   child: GestureDetector(onTap: (){},
                       child: Row(children: <Widget>[ Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 15),) ],)),
                 )
                ],),
              ) ,
            );
            }),
      ),
    );
  }
}
