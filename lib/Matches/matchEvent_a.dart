import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../message.dart';

class MatchEvent_a extends StatefulWidget {
  @override
  _MatchEvent_aState createState() => _MatchEvent_aState();
}

class _MatchEvent_aState extends State<MatchEvent_a> {

  TextStyle _textStyle=TextStyle(fontWeight: FontWeight.w800,fontSize: 16);
  TextStyle _textStyle1=TextStyle(color: Colors.grey,fontSize: 13);
  TextStyle _textStyle2=TextStyle(color: Colors.green);
  TextStyle _textStyle3=TextStyle(color: Colors.red);

  TextStyle head = TextStyle(fontSize: 15,fontWeight: FontWeight.w500 );
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 18,fontWeight: FontWeight.w400);

  bool test=true;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      minimum: EdgeInsets.only(bottom: 20),
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,'/players');
                },
                child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  child:Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 15,right: 15),
                    child: Column(children: <Widget>[
                    Row(children: <Widget>[
                      Text("أفضل لاعب",style: content,)
                    ],),
                      SizedBox(height: 15,),
                      Row(children: <Widget>[
                        Container(
                          width: 80,
                          child: Stack(children: <Widget>[
                             Container(width: 50,height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(width: 1,color: Colors.grey)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(100),),
                                child: Image.asset("assets/Marcelo.jpg"),
                              ),
                            ),
                            Positioned(
                              right: 22,bottom: 32,
                                child: Container(
                                  width: 42,height: 18,
                                  decoration: BoxDecoration(
                                    color:Colors.blue[700],
                              borderRadius: BorderRadius.all(Radius.circular(4)),

                            ),child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(children: <Widget>[
                                    Icon(Icons.star,size: 15,color: Colors.white,),
                                    Text("8.6",style: TextStyle(color: Colors.white,fontSize: 13.5,fontWeight: FontWeight.w500),),
                                  ],),
                            ),
                                ))
                          ],
                          ),
                        ),
                        SizedBox(width: 25,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text("Marcelo",style: content,),
                          Row(children: <Widget>[
                            Container(height: 20,width:20,
                            child: Image.asset("assets/541.jpg"),),
                            SizedBox(width: 5,),
                            Text("ريال مدريد",style: _textStyle1,)
                          ],)
                        ],)
                      ],)
                ],),
                  ) ,),
              ),
            ),
          Container(
             child: ListView(
               physics: ClampingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection: Axis.vertical,
               children: _list(context),
                    ),

                ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(height: 150,width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 10),
                    child: Row(mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        Text(" تاريخ المبارة",style: content,),
                        SizedBox(width: 50,),
                        Text("الخميس،3 سبتمبر 2020 3:30 م",style: content,)
                      ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12,right: 10),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,'/eachLeague' );
                      },
                      child: Row(mainAxisAlignment:MainAxisAlignment.start,
                        children: <Widget>[
                          Text(" دوري",style: content,),
                          SizedBox(width: 80,),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.all(Radius.circular(10),)
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.only(left: 3,right: 3),
                              child: Text("الدوري الاسباني-الشوط 24",style: content,maxLines: 2,softWrap: true,),
                            )),
                          )
                        ],),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(height: 100,width: MediaQuery.of(context).size.width,
            child: Card(
              shape:  RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10.0))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 10),
                    child: Row(mainAxisAlignment:MainAxisAlignment.start, children: <Widget>[Text("المواجهات السابقة",style: content,)],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.green[600]
                          ),
                          child: Center(child: Text("ف",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.green[600]
                          ),
                          child: Center(child: Text("ف",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.green[600]
                          ),
                          child: Center(child: Text("ف",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        SizedBox(width: 40.0,),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[600]
                          ),
                          child: Center(child: Text("ت",style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
          child: Container(
            height: 283,
            child: Swiper.children(
              scrollDirection: Axis.horizontal,
              autoplay: false,
              pagination: new SwiperPagination(
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0,0.0),
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.grey,
                      activeColor: Colors.black,
                      size: 7.0,
                      activeSize: 7.0)),
              children: <Widget>[
                Column(children: <Widget>[Container(
                  height: 265.0,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: <Widget>[
                              Text("لم يخسر ريال مدريد في 8 مقابلات",style: content,),]),
                      ),
                      Divider(height: 2.0,),

                      Stack(
                          children: <Widget>[
                            Container(color: Colors.white,
                              height: 190,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("من تعتقد سيفوز؟",style: head)
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("اتليتكو",style: content,),
                                      SizedBox(height: 5,),
                                      Text("تعادل",style: content,),
                                      Text("ريال مدريد",style: content,),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[

                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: LinearPercentIndicator(
                                          width: 150,
                                          progressColor: Colors.green,
                                          percent: 0.42,
                                        ),
                                      ),
                                      SizedBox(height: 23,),
                                      LinearPercentIndicator(
                                        width: 150,
                                        progressColor: Colors.grey[700],
                                        percent: 0.36,
                                      ),
                                      SizedBox(height: 23,),
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: LinearPercentIndicator(
                                          width: 150,
                                          progressColor: Colors.grey[700],
                                          percent: 0.22,
                                        ),
                                      ),

                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("36%",style: TextStyle(color: Colors.green),),
                                      SizedBox(height: 12,),
                                      Text("42%",style: TextStyle(color: Colors.grey[700]),),
                                      SizedBox(height: 12,),
                                      Text("22%",style: TextStyle(color: Colors.grey[700]),)
                                    ],),
                                  ),
                                ],),
                                Padding(
                                  padding: const EdgeInsets.only(right: 35,top: 12),
                                  child: Text("اجمالي الاصوات:188",
                                    style: content4),),

                              ],
                              ),
                            )
                          ]
                      )

                    ],),
                  ),
                ),
                ]
                ),
                Column(
                    children: <Widget>[
                      Container(
                        height: 265.0,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                          child: Column(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        width: MediaQuery.of(context).size.width * 0.9,
                                        child: Text(" ريال مدريد معدل 1 اهداف في اخر 3 مقابلات،وا اتليتكو لديه معدل 0.67  ",style: content,
                                          overflow: TextOverflow.visible,)),]),
                            ),
                            Divider(height: 2.0,),

                            Stack(
                                children: <Widget>[
                                  Container(
                                    height: 180, color: Colors.white,
                                    child: Column(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(children: <Widget>[
                                          Text("هل يسجل الفريقان نتائج؟",style: head)
                                        ],),
                                      ),
                                      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                          child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                            Text("نعم",style: content,),
                                            SizedBox(height: 5,),
                                            Text("لا",style: content,),
                                          ],),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                          child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[

                                            Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: LinearPercentIndicator(
                                                width: 150,
                                                progressColor: Colors.green,
                                                percent: 0.63,
                                              ),
                                            ),
                                            SizedBox(height: 23,),
                                            LinearPercentIndicator(
                                              width: 150,
                                              progressColor: Colors.grey[700],
                                              percent: 0.37,
                                            ),

                                          ],),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                          child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                            Text("63%",style: TextStyle(color: Colors.green),),
                                            SizedBox(height: 12,),
                                            Text("37%",style: TextStyle(color: Colors.grey[700]),),
                                            SizedBox(height: 12,),
                                          ],),
                                        ),
                                      ],),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text("اجمالي الاصوات:188",
                                          style: content4,),
                                      ),
                                      SizedBox(height: 15,),
                                      Divider(height: 2,)
                                    ],
                                    ),
                                  )

                                ]
                            )
                          ],),
                        ),
                      ),
                    ]
                ),
                Column(children: <Widget>[Container(
                  height: 265.0,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: <Widget>[Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: Text(" ريال مدريد معدل 1 اهداف في اخر 3 مقابلات،وا اتليتكو لديه معدل 0.67  ",style: content,
                                  overflow: TextOverflow.visible,)),]),
                      ),
                      Divider(height: 2.0,),
                      Stack(
                          children: <Widget>[
                            Container(
                              height: 182, color: Colors.white,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("هل سيكون هناك اكثر من 2.5 هدفا؟",style: head)
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("نعم",style: content,),
                                      SizedBox(height: 5,),
                                      Text("لا",style: content,),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[

                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: LinearPercentIndicator(
                                          width: 150,
                                          progressColor: Colors.green,
                                          percent: 0.63,
                                        ),
                                      ),
                                      SizedBox(height: 23,),
                                      LinearPercentIndicator(
                                        width: 150,
                                        progressColor: Colors.grey[700],
                                        percent: 0.37,
                                      ),

                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("63%",style: TextStyle(color: Colors.green),),
                                      SizedBox(height: 12,),
                                      Text("37%",style: TextStyle(color: Colors.grey[700]),),
                                      SizedBox(height: 12,),
                                    ],),
                                  ),
                                ],),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text("اجمالي الاصوات:14",
                                    style: TextStyle(color: Colors.grey[500],fontSize: 13),),
                                ),
                                SizedBox(height: 15,),
                                Divider(height: 2,)
                              ],
                              ),

                            )

                          ]
                      )

                    ],),
                  ),
                ),
                ]
                ),
                Column(children: <Widget>[Container(
                  height: 265.0,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: <Widget>[
                              Text("اتليتكو",style: head,),
                              Text(" لم يتعادل في اخر  8 مقابلات",style: content,),]),
                      ),
                      Divider(height: 2.0,),

                      Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("فرصة مضاعفة؟",style: head)
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("1x",style: content,),
                                      SizedBox(height: 12,),
                                      Text("12",style: content,),
                                      SizedBox(height: 12,),
                                      Text("x2",style: content,),
                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[

                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: LinearPercentIndicator(
                                          width: 150,
                                          progressColor: Colors.green,
                                          percent: 0.63,
                                        ),
                                      ),
                                      SizedBox(height: 23,),
                                      LinearPercentIndicator(
                                        width: 150,
                                        progressColor: Colors.grey[700],
                                        percent: 0.37,
                                      ),
                                      SizedBox(height: 23,),
                                      LinearPercentIndicator(
                                        width: 150,
                                        progressColor: Colors.grey[700],
                                        percent: 0.37,
                                      ),

                                    ],),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("63%",style: TextStyle(color: Colors.green),),
                                      SizedBox(height: 12,),
                                      Text("37%",style: TextStyle(color: Colors.grey[700]),),
                                      SizedBox(height: 12,),
                                      Text("37%",style: TextStyle(color: Colors.grey[700]),),
                                    ],),
                                  ),
                                ],),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text("اجمالي الاصوات:7",
                                    style: TextStyle(color: Colors.grey[500],fontSize: 13),),
                                ),
                                SizedBox(height: 15,),
                                Divider(height: 2,)
                              ],
                              ),
                            ),
                          ]
                      )

                    ],),                ),
                ),
                ]
                ),

              ],
            ),
          ),
        ),
        Container(margin: EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("ترقيات الصعاب هي 18+.",style: content,),],),
                Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("اقرا المزيد علي ",style: content,)],)

              ],
            ),
          ),),
      ]
      ),
    );
  }
  Widget _goal(bool test){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      child: test? Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          child: Row(children: <Widget>[
            Container(
                child: Text("2",style: _textStyle,),

            ),
            SizedBox(width: 20,),
            Icon(MdiIcons.soccer,size: 25,),
            SizedBox(width: 10,),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Text("مارسيلو( 0 - 1 )")
              ],),
              Row(children: <Widget>[
                Text("صناعة من مارسيلو ",style:_textStyle1 ,)
              ],)
            ],)

          ],
          ),
        ),
      ):Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: Row(children: <Widget>[
            Container(
              child: Text("2",style: _textStyle,),

            ),
            SizedBox(width: 20,),
            Icon(MdiIcons.soccer,size: 25,),
            SizedBox(width: 10,),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Text("مارسيلو( 0 - 1 )")
              ],),
              Row(children: <Widget>[
                Text("صناعة من مارسيلو ",style:_textStyle1 ,)
              ],)
            ],)

          ],
          ),
        ),
      )
    );
  }
  Widget _switch(bool test){
    return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: test? Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            child: Row(children: <Widget>[
              Container(
                child: Text("22",style: _textStyle,),

              ),
              SizedBox(width: 20,),
              Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width:20,height: 16,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 15,),),
                  SizedBox(height: 5,),
                  Container(
                    width:20,height: 16,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),)
                ],),
              SizedBox(width: 10,),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Text("مارسيلو",style:_textStyle2,)
                ],),
                Row(children: <Widget>[
                  Text(" كارفخال  ",style:_textStyle3 ,)
                ],)
              ],)

            ],
            ),
          ),
        ):Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            child: Row(children: <Widget>[
              Container(
                child: Text("32",style: _textStyle,),

              ),
              SizedBox(width: 20,),
              Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                Container(width:20,height: 16,
                  decoration: BoxDecoration(
                    color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Icon(Icons.arrow_back,color: Colors.white,size: 15,),),
                  SizedBox(height: 5,),
                Container(width:20,height: 16,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Icon(Icons.arrow_forward,color: Colors.white,size: 15,),)
              ],),
              SizedBox(width: 10,),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Text("مارسيلو",style:_textStyle2,)
                ],),
                Row(children: <Widget>[
                  Text(" كارفخال  ",style:_textStyle3 ,)
                ],)
              ],)

            ],
            ),
          ),
        )
    );
  }
  Widget _yellow(bool test){
    return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: test? Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            height: 50,
            child: Row(children: <Widget>[
              Container(
                child: Text("65",style: _textStyle,),

              ),
              SizedBox(width: 20,),
              Container(height: 23,width: 15,
              decoration: BoxDecoration(
                color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(4))),),
              SizedBox(width: 10,),
              Text("مارسيلو")

            ],
            ),
          ),
        ):Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: 50,
            child: Row(children: <Widget>[
              Container(
                child: Text("70",style: _textStyle,),

              ),
              SizedBox(width: 20,),
              Container(height: 23,width: 15,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(4))),),
              SizedBox(width: 10,),
              Text("مارسيلو")

            ],
            ),
          ),
        )
    );
  }
  List<Widget> _list(BuildContext context){
    var test= List<Widget>();
    
    test.add(_goal(false));
    test.add(_goal(true));
    test.add(_switch(true));
    test.add(_switch(false));
    test.add(_switch(false));
    test.add(_yellow(true));
    test.add(_yellow(false));

    
    return test;
  }
}
