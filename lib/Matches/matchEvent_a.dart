import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../message.dart';

class MatchEvent_a extends StatefulWidget {
  @override
  _MatchEvent_aState createState() => _MatchEvent_aState();
}

class _MatchEvent_aState extends State<MatchEvent_a> {

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
        /* Container(
           child: ListView.builder(
             shrinkWrap: true,
             scrollDirection: Axis.vertical,
             padding: EdgeInsets.only(top: 15.0),
             itemCount: messages.length,
             itemBuilder: (BuildContext context,index){
               final Message message= messages[index];
               final bool isMe =message.sender.id==currentUser.id;
               return _buildMessage(message,isMe);
                    },
                  ),

              ),
*/
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
                  child: Row(mainAxisAlignment:MainAxisAlignment.start, children: <Widget>[Text("تشكيلة الفريق")],),
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
          height: 270,
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
                height: 250.0,
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
                          Container(color: Colors.white,
                            height: 180,
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
                      height: 250.0,
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
                                  height: 180, color: Colors.white,
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
                                )

                              ]
                          )
                        ],),
                      ),
                    ),
                  ]
              ),
              Column(children: <Widget>[Container(
                height: 250.0,
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
                            height: 180, color: Colors.white,
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

                          )

                        ]
                    )

                  ],),
                ),
              ),
              ]
              ),
              Column(children: <Widget>[Container(
                height: 250.0,
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
                            height: 180, color: Colors.white,
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
              Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("ترقيات الصعاب هي 18+."),],),
              Row(mainAxisAlignment:MainAxisAlignment.start,children: <Widget>[Text("اقرا المزيد علي ")],)

            ],
          ),
        ),),
    ]
    );
  }
  _buildMessage(message,isMe){
    return Row(
      children: <Widget>[
        Container(
          padding:
          EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 15.0
          ),
          width: MediaQuery.of(context).size.width * 0.75,
          margin:
          isMe ? EdgeInsets.only(
              top: 8.0,bottom: 5.0,
              right: 80.0
          )
              :EdgeInsets.only(
            top: 8.0,
            bottom: 5.0,
          ),
          decoration: BoxDecoration(
              color:
              isMe ? Colors.blue[50]
                  :Colors.red[50],
              borderRadius:
              isMe?BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0))
                  :BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0))
          ),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text(message.time,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(
                height:5.0,
              ),
              Text(message.text,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
              ),
              )
            ],),
        ),


      ],

    );

  }
}
