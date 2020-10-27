import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fotmobb/EachLeague/eachLeague.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MatchEvents extends StatefulWidget {
  @override
  _MatchEventsState createState() => _MatchEventsState();
}

class _MatchEventsState extends State<MatchEvents> {
   bool _visable = false;
   bool _visable1 = false;
   bool _visable2 = false;
   bool _visable3 = false;
   int i=0 ;
   int sumI=0;
  @override
  Widget build(BuildContext context) {
    return   Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
        child: Container(
          height: 280,
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
                            Text("لم يخسر ريال مدريد في 8 مقابلات"),]),
                    ),
                    Divider(height: 2.0,),

                    Stack(
                        children: <Widget>[
                          Container(
                            child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(children: <Widget>[
                                  Text("من تعتقد سيفوز؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(mainAxisAlignment:MainAxisAlignment.spaceAround,children: <Widget>[
                                    Column(mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              i++;
                                              sumI+=i;
                                              _visable=true;
                                            });
                                            print(sumI);
                                          },
                                          child: Container(height: 40,width: 40,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                            child: Center(child: Text("1",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ريال مدريد"),

                                      ],
                                    ),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: (){setState(() {
                                          _visable=true;
                                        });},
                                        child: Container(height: 40,width: 40,
                                          decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                          child: Center(child: Text("x",style: TextStyle(color: Colors.grey,fontSize: 27,fontWeight: FontWeight.w500),),),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("تعادل"),
                                    ],
                                  ),
                                  Column(mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            _visable=true;
                                          });
                                        },
                                        child: Container(height: 40,width: 40,
                                          decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                          child: Center(child: Text("2",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text("اتليتكو"),
                                    ],)
                                ],),
                              ),
                              SizedBox(height: 15,),
                              Divider(height: 2.0,)
                            ],
                            ),
                          ),
                          Visibility(visible: _visable,
                            child: Container(color: Colors.white,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("من تعتقد سيفوز؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("اتليتكو"),
                                      SizedBox(height: 5,),
                                      Text("تعادل"),
                                      Text("ريال مدريد"),
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
                                    style: TextStyle(color: Colors.grey[500],fontSize: 13),),
                                )
                              ],
                              ),
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
                                      child: Text(" ريال مدريد معدل 1 اهداف في اخر 3 مقابلات،وا اتليتكو لديه معدل 0.67  ",overflow: TextOverflow.visible,)),]),
                          ),
                          Divider(height: 2.0,),

                          Stack(
                              children: <Widget>[
                                Container(
                                  child: Column(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(children: <Widget>[
                                        Text("هل يسجل الفريقان نتائج؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                      ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: (){
                                              setState(() {
                                                _visable1=true;
                                              });
                                            },
                                            child: Container(height: 40,width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                              child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                            ),
                                          ),
                                          Container(height: 40,width: 40,
                                            decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                            child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 27,fontWeight: FontWeight.w500),),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(" نعم"),
                                        Text("لا"),
                                      ],)

                                  ],
                                  ),
                                ),
                                Visibility(
                                   visible: _visable1,
                                  child: Container(
                                     color: Colors.white,
                                    child: Column(children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(children: <Widget>[
                                          Text("هل يسجل الفريقان نتائج؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                        ],),
                                      ),
                                      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                          child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                            Text("نعم"),
                                            SizedBox(height: 5,),
                                            Text("لا"),
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
                                          style: TextStyle(color: Colors.grey[500],fontSize: 13),),
                                      ),
                                      SizedBox(height: 15,),
                                      Divider(height: 2,)
                                    ],
                                    ),
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
                              child: Text(" ريال مدريد معدل 1 اهداف في اخر 3 مقابلات،وا اتليتكو لديه معدل 0.67  ",
                                overflow: TextOverflow.visible,)),]),
                    ),
                    Divider(height: 2.0,),
                    Stack(
                        children: <Widget>[
                          Container(
                            child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(children: <Widget>[
                                  Text("هل سيكون هناك اكثر من 2.5 هدفا؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _visable2=true;
                                        });
                                      },
                                      child: Container(height: 40,width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                        child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                      ),
                                    ),
                                    
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _visable2=true;
                                        });
                                        },
                                      child: Container(height: 40,width: 40,
                                        decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                        child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 27,fontWeight: FontWeight.w500),),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(" نعم"),
                                  Text("لا"),
                                ],)

                            ],
                            ),
                          ),
                          Visibility(
                            visible: _visable2,
                            child: Container(
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("هل سيكون هناك اكثر من 2.5 هدفا؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("نعم"),
                                      SizedBox(height: 5,),
                                      Text("لا"),
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
                            Text("اتليتكو",style: TextStyle(fontWeight: FontWeight.w600),),
                            Text(" لم يتعادل في اخر  8 مقابلات"),]),
                    ),
                    Divider(height: 2.0,),

                    Stack(
                        children: <Widget>[
                          Container(
                            height: 180,
                            child: Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(children: <Widget>[
                                  Text("فرصه مضاعفة",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _visable3=true;
                                        });
                                      },
                                      child: Container(height: 40,width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                        child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _visable3=true;
                                        });
                                      },
                                      child: Container(height: 40,width: 40,
                                        decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                        child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 27,fontWeight: FontWeight.w500),),),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _visable3=true;
                                        });
                                      },
                                      child: Container(height: 40,width: 40,
                                        decoration: BoxDecoration(shape: BoxShape.circle,border:Border.all(color: Colors.grey[300]) ),
                                        child: Center(child: Text("",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w600),),),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text("1x "),
                                  Text("12"),
                                  Text("2x"),
                                ],)

                            ],
                            ),
                          ),
                          Visibility(
                            visible: _visable3,
                            child: Container(
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(children: <Widget>[
                                    Text("فرصة مضاعفة؟",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15))
                                  ],),
                                ),
                                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8,right: 8,top: 4),
                                    child: Column(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[
                                      Text("1x"),
                                      SizedBox(height: 12,),
                                      Text("12"),
                                      SizedBox(height: 12,),
                                      Text("x2"),
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
                          )
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
                      Text(" تاريخ المبارة"),
                      SizedBox(width: 50,),
                      Text("الخميس،3 سبتمبر 2020 3:30 م")
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
                        Text(" دوري"),
                        SizedBox(width: 80,),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.all(Radius.circular(10),)
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.only(left: 3,right: 3),
                            child: Text("الدوري الاسباني-الشوط 24",maxLines: 2,softWrap: true,),
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
                  child: Row(mainAxisAlignment:MainAxisAlignment.start, children: <Widget>[Text("المواجهات السابقة")],),
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
      Container(margin: EdgeInsets.only(top: 130),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("ترقيات الصعاب هي 18+."),],),
            Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("اقرا المزيد علي ")],)

          ],
        ),
      ),)
    ]
    );
  }
}
