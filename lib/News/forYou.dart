import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../trendingData.dart';
import 'package:webview_flutter/webview_flutter.dart';

class forYou extends StatefulWidget {
  @override
  _forYouState createState() => _forYouState();
}

TextStyle _headline=TextStyle(fontSize: 17,fontWeight: FontWeight.w500,);
TextStyle content = TextStyle(fontSize: 13.5, );

class _forYouState extends State<forYou> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.trendingDown,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "آخبار شائعة",
                          style: _headline,
                        ),
                        SizedBox(width: 5),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,bottom: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/webView');
                        },
                        child: new Column(
                          children: <Widget>[
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.95,
                                    height: 200,
                                    child: new ClipRRect(
                                      child: Image.asset(
                                        "assets/5.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(16.0),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,right: 12),
                              child: Text(
                                "كشف محمد فرج عامر رئيس نادي سموحة، أن اللجنة الخماسية التي تدير الاتحاد المصري لكرة القدم قررت..",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12,right: 12),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    MdiIcons.soccer,
                                    size: 15.0,
                                  ),
                                  Text(
                                    "  FotMob",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    " منذ 6 دقائق",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
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
            ),

          ],
        ),
        Container(height: 8,
        color: Colors.grey[300],),
        Padding(
          padding: const EdgeInsets.only(top: 15,right: 10,bottom: 15),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(children: <Widget>[
                Icon(Icons.pie_chart,color: Colors.green,),
                SizedBox(width: 10,),
                Text("لا تفوت",style: _headline,)
              ],),
            ),
               ListView.builder(
                 scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 75,right: 75),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[
                      Column(crossAxisAlignment:CrossAxisAlignment.end,children: <Widget>[Text("اتليتكو",style:content,)],),
                      Container(height: 25,width: 30,child: Image.asset("assets/530.jpg"),),
                      Column(mainAxisAlignment:MainAxisAlignment.center
                        ,children: <Widget>[
                          Text(" غدا",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey[800]),),
                          Text("6 م",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey[800]),)
                        ],),
                      Container(height: 30,width: 35,child: Image.asset("assets/541.jpg"),),
                      Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[Text("ريال مدريد",style: content,)],),
                    ],),
                  );
                },
              ),
          ],),
        ),
        Container(height: 8,
          color: Colors.grey[300],),
        ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: trend.length,
            itemBuilder:(BuildContext context , index){
              return GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/webView');
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    height: 80,
                                    child: ClipRRect(
                                      child:
                                      Image.asset(trend[index].imageUrl,fit: BoxFit.fill,),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                ],

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Center(
                                        child: Text(trend[index].text,
                                          style: TextStyle(
                                              fontSize: 13.0
                                          ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              MdiIcons.soccer,
                                              size: 15.0,
                                            ),
                                            Text(
                                              "  FotMob",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),
                                            Text(
                                              " منذ 6 دقائق",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ]
                                    ,
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),

                      ),

                    ),

                  ],
                ),
              );
            }
        ),
        Container(
          color: Colors.grey[200],
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8,top: 10,right: 18),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.access_time,
                color: Colors.green,
              ),
              SizedBox(width: 10,),
              Text(
                "الاحدث",
                style:_headline,
              ),

            ],
          ),
        ),
        ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: trend.length,
          itemBuilder: (BuildContext context, index){
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/webView');
              },
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                            child: new Column(
                              children: <Widget>[
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        width: MediaQuery.of(context).size.width*0.95,
                                        height: 200,
                                        child: new ClipRRect(
                                          child: Image.asset(
                                            trend[index].imageUrl,
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(16.0),
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
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12,right: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        MdiIcons.soccer,
                                        size: 15.0,
                                      ),
                                      Text(
                                        "  FotMob",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        " منذ 6 دقائق",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),


                                    ],
                                  ),
                                )
                              ],
                            ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        )


      ],

    );
  }
}
