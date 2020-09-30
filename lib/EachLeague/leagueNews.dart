import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../trendingData.dart';

class leagueNews extends StatefulWidget {
  @override
  _leagueNewsState createState() => _leagueNewsState();
}

class _leagueNewsState extends State<leagueNews> {

  TextStyle headline = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  TextStyle headline2 = TextStyle(fontSize: 12, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: trend.length,
          itemBuilder: (BuildContext context, index){
            return Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 4,right: 4,top: 5),
                        child: new Card(
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12))),
                          semanticContainer: true,
                          elevation: 0.6,
                          child: new Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(right: 0.0),
                                    child: Container(
                                      width: 376,
                                      height: 200,
                                      child: new ClipRRect(
                                        child: Image.asset(
                                          trend[index].imageUrl,
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius:
                                        BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Text(
                                  trend[index].text,
                                  style: headline,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12,right: 15,bottom: 8),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      MdiIcons.soccer,
                                      size: 15.0,
                                    ),
                                    Text(
                                      "  FotMob",
                                      style: headline2,
                                    ),
                                    Text(
                                      " منذ 6 دقائق",
                                      style: headline2,
                                    ),


                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
    );
  }
}
