import 'package:flutter/material.dart';

class teamsStats extends StatefulWidget {
  @override
  _teamsStatsState createState() => _teamsStatsState();
}

class _teamsStatsState extends State<teamsStats> {
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
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[100],
                      height: 130,
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 15),
                          child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                            Row(children: <Widget>[ Text("تقيم اللاعب")]),
                            SizedBox(height:15 ,),
                            Text(" نادي ريال مدريد",style: TextStyle(fontSize: 15),),
                            SizedBox(height:15 ,),
                            Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("2.93",style: TextStyle(fontSize: 22),),
                              ],)
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,bottom: 20),
                          child: Column(mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[ Container(
                              height: 50,width: 50,
                              child: Image.asset("assets/541.jpg"))],),
                        )
                      ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 13),
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        Row(children: <Widget>[
                          Container(height:25,width:25,child: Image.asset("assets/530.jpg"),),SizedBox(width: 5,), Text("اتليتكو")]),
                        Text("2.77",style: TextStyle(fontSize: 17),),
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        Row(children: <Widget>[
                          Container(height:25,width:25,child: Image.asset("assets/541.jpg"),),SizedBox(width: 5,), Text("ريال مدريد")]),
                        Text("2.75",style: TextStyle(fontSize: 17),),
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
