import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class statisticsForTeam extends StatefulWidget {
  @override
  _statisticsForTeamState createState() => _statisticsForTeamState();
}

class _statisticsForTeamState extends State<statisticsForTeam> {

  TextStyle head = TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 20,fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
        child: ExpansionTile(
          title: Row(children: <Widget>[
            Column(children: <Widget>[Container(height: 30,width: 30,child: Image.asset("assets/12.jpg"),)],),
            SizedBox(width: 10,),
            Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
              Row(children: <Widget>[Text("الدوري الاسباني الدرجه الاولي",style: head,)],),
              Row(children: <Widget>[Text("2020/2021",style: content4,)],)
            ],)
          ],)

        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 3,left: 3),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(height: 128,width: MediaQuery.of(context).size.width*0.49,
              child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child:Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,right: 15),
                child: Column(
                  children: <Widget>[
                  Row(children: <Widget>[Text("تقيم اللاعب",style: head,)],),
                  Row(children: <Widget>[Text("متوسط الدوري",style:content4,)],),
                  SizedBox(height: 10,),
                  Row(children: <Widget>[
                    Text("6.9 ",style: TextStyle(color: Colors.green[600],fontSize: 20),)
                    ,Text("/ 6.5",style: TextStyle(color: Colors.grey,fontSize: 16),),],),
                ],),
              )
                )),
          Container(height: 128,width: MediaQuery.of(context).size.width*0.49,
              child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child:Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,right: 15),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[Text("فريق مقابل فريق",style: content)],),
                  Row(children: <Widget>[Text("مقارنة الاحصائيات",style: content4)],),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                    Container(margin: EdgeInsets.only(left: 10),
                      height: 30,width: 30,
                    child: Image.asset("assets/541.jpg"),),
                    Container(margin: EdgeInsets.only(left: 10),
                      height: 25,width:25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(width: 2,color: Colors.grey),),
                      child: Center(child: Text("vs",style: TextStyle(color: Colors.grey),)),
                    ),
                    Container(height: 30,width: 30,
                      child: Image.asset("assets/530.jpg"),),
                  ],),
                ],),
              ) 
                )),
        ],),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3,right: 3),
        child: Container(
          height: 210,width: MediaQuery.of(context).size.width,
          child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(padding: EdgeInsets.only(top: 8,bottom: 8,right: 10),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text("النقاط ",style: content,),Text("69",style: number,)],),
                ),
                Row(children: <Widget>[Text("الرتبه 1",style: content2,)],),
                Divider(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,height: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 130,left: 15),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "م",
                            style: content4
                          ),
                          SizedBox(
                            width: 21.0,
                          ),
                          Text(
                            "ف",
                            style: content4
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "ت",
                            style: content4
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "خ",
                            style: content4
                          ),
                          SizedBox(
                            width: 19.0,
                          ),
                          Text(
                            "-/+",
                            style: content4
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Text(
                            "=",
                            style: content4
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Text(
                            "ن",
                            style: content4
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          child: Container(
                                              width: 25,
                                              height: 20,
                                              child: Image.asset(
                                                  "assets/541.jpg")),
                                        ),
                                        Text("الذهاب ",style: content,),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Text("23",style: content,),
                                Text("20",style: content),
                                Text("2",style: content),
                                Text("1",style: content),
                                Text("8-56",style: content),
                                Text("48",style: content),
                                Text("62",style: content),
                              ],
                            ),
                          ),
                        ]),
                      );
                    }),
              ],),
            )
            ,),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 220,width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text("اهداف",style: content,),
                  Text("58",style: number,)
                ],),
                Divider(height: 25,),
                Expanded(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Text("اللعب المفتوح",style: content,),Text("ركنية",style: content,)
                          ,Text("ضربة حرة",style: content,),Text("ضربة جزء",style: content,),Text("هدف في مرماه",style: content,),
                      ],),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                      LinearPercentIndicator(
                        width: 240,percent: 0.5,lineHeight: 15.0,backgroundColor:Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,isRTL: true,),
                      LinearPercentIndicator(
                        width: 240,percent: 0.03,lineHeight: 15.0,backgroundColor:Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,isRTL: true,),
                      LinearPercentIndicator(
                        width: 240,percent: 0.01,lineHeight: 15.0,backgroundColor:Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,isRTL: true,),
                      LinearPercentIndicator(
                        width: 240,percent: 0.05,lineHeight: 15.0,backgroundColor:Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,isRTL: true,),
                      LinearPercentIndicator(
                        width: 240,percent: 0.0,lineHeight: 15.0,backgroundColor:Colors.grey[200],
                        progressColor: Theme.of(context).primaryColor,isRTL: true,),
                    ],),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                      Text("49",style: content,),Text("3",style: content,),Text("1",style: content,),Text("5",style: content,),Text("0",style: content,),
                    ],)
                  ],),
                )

              ],),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Stack(children: <Widget>[
          Container(
            height: 394,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(top: 70,bottom: 20,right: 12,left: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,index){
                      return Container(
                          height: 200,width: 230,
                          child:Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            child: Column(children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context,'/players');
                                },
                                child: Container(
                                  height: 148,
                                  width: MediaQuery.of(context).size.width,
                                  color: Theme.of(context).primaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                        child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top: 10),
                                                child: Row(children: <Widget>[Text("اهداف",style: TextStyle(color:Colors.white),)],
                                                ),
                                              ),
                                              Divider(thickness: 1.0,height:15,color: Colors.white,),
                                              Container(
                                                height: 95,
                                                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets.only(bottom: 10),
                                                    child: Column(children: <Widget>[
                                                      SizedBox(height: 5,),
                                                      Text("راموس",style: TextStyle(color: Colors.white),),
                                                      SizedBox(height: 10,),
                                                      Text("8",style: TextStyle(fontSize: 20,color: Colors.white),),
                                                    ],),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 15),
                                                    child: Column(mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[
                                                      Container(
                                                        height: 65,width: 60,
                                                        child: Image.asset("assets/Marcelo.jpg",fit: BoxFit.fill,),)
                                                    ],),
                                                  ),
                                                ]
                                                ),
                                              )
                                            ])
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(children: <Widget>[
                                  ListView.builder(
                                    physics: ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    itemBuilder: (BuildContext context,index){
                                      return   Padding(
                                        padding: const EdgeInsets.only(bottom: 8),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pushNamed(context,'/players');
                                          },
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  width: 80,
                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: <Widget>[
                                                      Container(height: 30,width: 30,
                                                          child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                                                              child: Image.asset("assets/Marcelo.jpg",))),
                                                      Text("مارسيلو")
                                                    ],),
                                                ),
                                                Text("7.40")
                                              ]
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Divider(height: 15,),

                                  Row(children: <Widget>[
                                    Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 14),)],),
                                ],),
                              )
                            ],),
                          )
                      );
                    }),
              ),
            ),
          ),
          Positioned(
              top: 20,right: 20,
              child: Row(
                children: <Widget>[
                  Text("افضل اللاعبين")],)),
        ]
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Stack(children: <Widget>[
          Container(
            height: 335,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(top: 70,bottom: 20,right: 12,left: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,index){
                      return Container(
                          height: 200,width: 280,
                          child:Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            child: Column(children: <Widget>[
                              Container(
                                height: 86,
                                width: MediaQuery.of(context).size.width,
                                color: Theme.of(context).primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                      child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,right: 10),
                                              child: Row(children: <Widget>[
                                              Text("تسديدات علي المرمي لكل مباراة",style: TextStyle(color:Colors.white),)
                                              ],
                                              ),
                                            ),
                                            Divider(height:15,color: Colors.white,),
                                              Row(children: <Widget>[
                                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Container(
                                                        width: MediaQuery.of(context).size.width*0.51,
                                                        child: Row(children: <Widget>[
                                                          Text("1",style: TextStyle(color: Colors.white)),
                                                          SizedBox(width: 10,),
                                                          Container(height: 25,width: 25,
                                                          child: Image.asset("assets/541.jpg"),),
                                                          SizedBox(width: 10,),
                                                          Text("ريال مدريد",style: TextStyle(color: Colors.white))
                                                        ],),
                                                      ),
                                                      Text("4.4",style: TextStyle(color: Colors.white,fontSize: 20),)
                                                    ]
                                                ),
                                              ]
                                              ),
                                          ])
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(children: <Widget>[
                                  ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: 2,
                                    itemBuilder: (BuildContext context,index){
                                      return  Padding(
                                        padding: const EdgeInsets.only(bottom: 16),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pushNamed(context, '/eachTeam');
                                          },
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: <Widget>[
                                                      Text("2"),
                                                      Container(
                                                        height: 25,width: 25,
                                                        child: Image.asset("assets/541.jpg"),
                                                      ),
                                                      Text("ريال مدريد")
                                                    ],),
                                                ),
                                                Text("3.9")
                                              ]
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Divider(height: 10,),
                                  Row(children: <Widget>[
                                    Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 14),)],),
                                ],),
                              )
                            ],),
                          )
                      );
                    }),
              ),
            ),
          ),
          Positioned(
              top: 20,right: 20,
              child: Row(
                children: <Widget>[
                  Text("هجوم ")],)),
        ]
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Stack(children: <Widget>[
          Container(
            height: 340,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(top: 70,bottom: 20,right: 12,left: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,index){
                      return Container(
                          height: 200,width: 280,
                          child:Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            child: Column(children: <Widget>[
                              Container(
                                height: 87,
                                width: MediaQuery.of(context).size.width,
                                color: Theme.of(context).primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                      child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,right: 10),
                                              child: Row(children: <Widget>[
                                                Text("الاهداف المتلقاة في كل مباراة",style: TextStyle(color:Colors.white),)
                                              ],
                                              ),
                                            ),
                                            Divider(height:15,color: Colors.white,),
                                            Row(children: <Widget>[
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      width: MediaQuery.of(context).size.width*0.51,
                                                      child: Row(children: <Widget>[
                                                        Text("1",style: TextStyle(color: Colors.white)),
                                                        SizedBox(width: 10,),
                                                        Container(height: 25,width: 25,
                                                          child: Image.asset("assets/541.jpg"),),
                                                        SizedBox(width: 10,),
                                                        Text("ريال مدريد",style: TextStyle(color: Colors.white))
                                                      ],),
                                                    ),
                                                    Text("0.3",style: TextStyle(color: Colors.white,fontSize: 20),)
                                                  ]
                                              ),
                                            ]
                                            ),
                                          ])
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(children: <Widget>[
                                  ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: 2,
                                    itemBuilder: (BuildContext context,index){
                                      return  Padding(
                                        padding: const EdgeInsets.only(bottom: 15),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pushNamed(context, '/eachTeam');
                                          },
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: <Widget>[
                                                      Text("2"),
                                                      Container(
                                                        height: 25,width: 25,
                                                        child: Image.asset("assets/541.jpg"),
                                                      ),
                                                      Text("ريال مدريد")
                                                    ],),
                                                ),
                                                Text("0.8")
                                              ]
                                          ),
                                        ),
                                      );
                                    },

                                  ),
                                  Divider(height: 15,),
                                  Row(children: <Widget>[
                                    Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 14),)],),
                                ],),
                              )
                            ],),
                          )
                      );
                    }),
              ),
            ),
          ),
          Positioned(
              top: 20,right: 20,
              child: Row(
                children: <Widget>[
                  Text("دفاع")],)),
        ]
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Stack(children: <Widget>[
          Container(
            height: 340,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(top: 70,bottom: 20,right: 12,left: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,index){
                      return Container(
                          height: 200,width: 280,
                          child:Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                            child: Column(children: <Widget>[
                              Container(
                                height: 87,
                                width: MediaQuery.of(context).size.width,
                                color: Theme.of(context).primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                      child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,right: 10),
                                              child: Row(children: <Widget>[
                                                Text("تمريرات دقيقة لكل مباراة",style: TextStyle(color:Colors.white),)
                                              ],
                                              ),
                                            ),
                                            Divider(height:15,color: Colors.white,),
                                            Row(children: <Widget>[
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      width: MediaQuery.of(context).size.width*0.51,
                                                      child: Row(children: <Widget>[
                                                        Text("1",style: TextStyle(color: Colors.white)),
                                                        SizedBox(width: 10,),
                                                        Container(height: 25,width: 25,
                                                          child: Image.asset("assets/541.jpg"),),
                                                        SizedBox(width: 10,),
                                                        Text("ريال مدريد",style: TextStyle(color: Colors.white))
                                                      ],),
                                                    ),
                                                    Text("4.3",style: TextStyle(color: Colors.white,fontSize: 20),)
                                                  ]
                                              ),
                                            ]
                                            ),
                                          ])
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(children: <Widget>[
                                  ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: ClampingScrollPhysics(),
                                    itemCount: 2,
                                    itemBuilder: (BuildContext context,index){
                                      return  Padding(
                                        padding: const EdgeInsets.only(bottom: 15),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pushNamed(context, '/eachTeam');
                                          },
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: <Widget>[
                                                      Text("2"),
                                                      Container(
                                                        height: 25,width: 25,
                                                        child: Image.asset("assets/541.jpg"),
                                                      ),
                                                      Text("ريال مدريد")
                                                    ],),
                                                ),
                                                Text("190.3")
                                              ]
                                          ),
                                        ),
                                      );
                                    },

                                  ),
                                  Divider(height: 15,),

                                  Row(children: <Widget>[
                                    Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 14),)],),
                                ],),
                              )
                            ],),
                          )
                      );
                    }),
              ),
            ),
          ),
          Positioned(
              top: 20,right: 20,
              child: Row(
                children: <Widget>[
                  Text("لعب الفريق")],)),
        ]
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3,right: 3,bottom: 8),
        child: Row(children: <Widget>[
          Container(
            height: 105,
            width: MediaQuery.of(context).size.width*0.49,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Row(children: <Widget>[Text("شباك نظيفة")],),
                  Row(children: <Widget>[Text("18",style: TextStyle(fontSize: 20),)],)
                ],),
              ),
            ),
          ),
          Container(
            height: 105,
            width: MediaQuery.of(context).size.width*0.49,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Row(children: <Widget>[Text("بطاقات")],),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                      Container(height: 22,width: 16,decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(4))
                      ),),
                      Text("30",style: TextStyle(fontSize: 22),),
                      SizedBox(width: 5,),
                      Container(height: 22,width: 16,decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(4))
                      ),),
                      Text("3",style: TextStyle(fontSize: 22),),

                    ],),
                  )
                ],),
              ),
            ),
          ),
        ],),
      )
    ],);
  }
}
