import 'package:flutter/material.dart';
import 'package:fotmobb/Playrers/playerStatistics.D.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class playerStatistics extends StatefulWidget {
  @override
  _playerStatisticsState createState() => _playerStatisticsState();
}

const TextStyle _textStyle=TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500);
class _playerStatisticsState extends State<playerStatistics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(right: 130, top: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(MdiIcons.scoreboard),
                Icon(Icons.assignment),
                Icon(MdiIcons.soccer),
                Icon(MdiIcons.shoePrint),
                Container(
                  height: 20,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                ),
                Container(
                  height: 20,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                ),
                Icon(Icons.star)
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,height: 4,),
        ListView.builder(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 13),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/12.jpg"),
                            ),
                            SizedBox(width: 10,),
                            Text("اسبانيا - الدوري الاسباني الدرجة الاولي",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                          ],
                        ),
                      ),
                      Divider(height: 15,),
                      ListView.builder(
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                          itemBuilder: (BuildContext context,index){
                        return Column(
                          children: <Widget>[
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: ExpansionTile(
                              title: Directionality(
                                  textDirection: TextDirection.rtl
                                  ,child: Text("2019/2020",style: _textStyle,)),
                              leading: Container(
                                width: MediaQuery.of(context).size.width*0.55,
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("15"),Text("15"),Text("1"),Text("2"),Text("2"),Text("0"),
                                      Container(height: 20,width: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(Radius.circular(4))),
                                        child: Center(child: Text("7.8",style: TextStyle(color: Colors.white),)),)

                                    ],),
                                ),
                              ),
                              children: <Widget>[
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      physics: ClampingScrollPhysics(),
                                      itemCount:playerStatisticsd.length,
                                      itemBuilder:(BuildContext context,index){
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 18,right: 10,bottom: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(playerStatisticsd[index].text),
                                              Text(playerStatisticsd[index].no),
                                            ],),
                                        );
                                      },

                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),
                            Container(
                              color: Colors.grey[200],
                              width: MediaQuery.of(context).size.width,height: 4,),
                        ],

                        );
                      })
                    ],
                  ),
                ),
              ],
            );
          },
        ),
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Column(
              children: <Widget>[
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Icon(MdiIcons.scoreboard,size: 20,),
                          ],),
                          Row(children: <Widget>[
                            Icon(Icons.assignment,size: 20,),
                          ],),
                          Row(children: <Widget>[
                            Icon(MdiIcons.soccer,size: 20,),
                          ],),
                          Row(children: <Widget>[
                            Icon(MdiIcons.shoePrint,size: 20,),
                          ],),
                          Row(children: <Widget>[
                            Container(
                              height: 18,
                              width: 13 ,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.all(Radius.circular(4))),
                            ),
                          ],),
                          Row(children: <Widget>[
                            Container(
                              height: 18,
                              width: 13,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(4))),
                            ),
                          ],),
                          Row(children: <Widget>[
                            Icon(Icons.star,size: 20,)
                          ],),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("المباريات"),
                          Text("بداية المبارة"),
                          Text("اهداف"),
                          Text("صناعة الاهداف"),
                          Text("بطاقات صفراء"),
                          Text("بطاقات حمراء"),
                          Text("تقييم اللاعب"),
                        ],
                      )
                ],

                ),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,bottom: 20,right: 10),
                  child: Row(children: <Widget>[
                    Text("اخر تحديث 1 سبتمبر 2020 8:13 ص")
                  ],),
                )
              ],

            ),
          ),
      ],
    );
  }
}




