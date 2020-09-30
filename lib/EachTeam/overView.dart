import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class overView extends StatefulWidget {
  @override
  _overViewState createState() => _overViewState();
}

class _overViewState extends State<overView> {

  TextStyle head = TextStyle(fontSize: 15,fontWeight: FontWeight.w500);
  TextStyle content = TextStyle(fontSize: 13.5);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey[700]);
  TextStyle content3 = TextStyle(fontSize: 12);
  TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 20,);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      minimum: EdgeInsets.only(bottom: 10.0),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:5.0,left: 5,right: 5),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/matchInfo');
            },
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 12),
                    child: Row(children: <Widget>[Text("المبارة التالية",style: head,),],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                      Text("غدا",style:content2,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 23,
                          decoration: BoxDecoration(
                              color:Colors.grey[100],
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4,right: 4),
                            child: Center(child: Text("دوري الاسباني ",style: content2,)),
                          )),
                    )
                    ],),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 80,right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("ريال مدريد",style: content,),
                          Container(
                            width: 30,
                            height: 25,
                            child: Image.asset("assets/541.jpg"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Center(child: Text("3:30 م",style: content,)),
                          SizedBox(width: 6),
                          Container(
                            width: 30,
                            height: 25,
                            child: Image.asset("assets/530.jpg"),
                          ),
                          Text("اتليتكو",style: content,),
                        ],
                      ),
                    ),
                ],),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: 145,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Text("المباريات الخمس الاخيرة",style: head)
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:
                      List.generate(text.length, (index){
                        return _Colnumm(text[index], img[index]);
                      })
                    ),
                  ),
                ],
                ),
              ),
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Stack(children: <Widget>[
              Container(
                height: 310,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 58,bottom: 20,right: 12,left: 12),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                        itemBuilder: (BuildContext context,index){
                      return Container(
                        height: 200,width: 200,
                      child:Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Column(children: <Widget>[
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),
                                child:ClipRRect(child: Image.asset("assets/6.jpg",fit:BoxFit.fill),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 55,
                              child: Row(
                                children: <Widget>[
                                  Expanded(child: Text("ريال مدريد يفقد لاعبان امام اتليتكو , مارسيلو الباك الشمال و راموس",style:content3,
                                    overflow: TextOverflow.visible,))],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,right: 15),
                            child: Row(children: <Widget>[Text("36 يوم مضت,10:51م",style:content4 ,)],),
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
                      Text("اخر الاخبار",style: head,)],)),
      ]
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Container(
            height: 180,width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(padding: EdgeInsets.all(8),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Container(height: 30,width: 30,
                  child: Image.asset("assets/12.jpg"),),
                  SizedBox(width: 10,),
                  Text("الدوري الاسباني",style: head,)],),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                  child:  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.35,
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 10,),
                              Text(
                                "فريق",
                                style: content4,
                              ),
                            ],),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3,right: 8),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "م",
                                  style:content4,
                                ),
                                SizedBox(width: 21,),
                                Text(
                                  "ف",
                                  style: content4,
                                ),
                                SizedBox(width: 17,),
                                Text(
                                  "ت",
                                  style: content4,
                                ),
                                SizedBox(width: 15,),
                                Text(
                                  "خ",
                                  style: content4
                                ),

                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.22,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "-/+",
                                style: content4
                              ),
                              SizedBox(width: 25,),
                              Text(
                                "=",
                                style: content4
                              ),
                              SizedBox(width: 25,),
                              Text(
                                "ن",
                                style: content4
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index) {
                      return Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("1"),
                                      Container(
                                        child: Container(
                                            width: 25,
                                            height: 20,
                                            child: Image.asset(
                                                "assets/541.jpg")),
                                      ),
                                      Text("ريال مدريد",style: content,),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 25.0,
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
                      ]);
                    }),
              ],),
            )
              ,),
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
                                                        SizedBox(height: 18,),
                                                        Text("8",style: TextStyle(fontSize: 20,color: Colors.white),),
                                                      ],),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 10),
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
                    Text("افضل اللاعبين",style: head,)],)),
          ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: 160,width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text("الكؤوس",style: head,),
                  ),
                  SizedBox(height: 10,),
                    Container(height: 30,width: 30,
                        child: Image.asset("assets/541.jpg")),
                  SizedBox(height: 20,),
                  Container(height: 30,width: 30,
                      child: Image.asset("assets/541.jpg")),

                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                    Text("اخر فوز 2014",style: content4,),
                    SizedBox(height: 30,),
                    Text("اخر فوز 2016/2017",style: content4,),
                  ],),
                ),
                SizedBox(width: 40,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[
                    Text("CAF Super Cup",style: content,),
                    SizedBox(height: 30,),
                    Text("Cup",style: content,)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25,right: 15),
                  child: Column(mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[
                    Text("6",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                    SizedBox(height: 30,),
                    Text("37",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                  ],),
                )
              ],),
            ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: 210,width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: <Widget>[
                Row(children: <Widget>[Text("الملعب",style: head,)],),
                SizedBox(height: 20,),
                Row(children: <Widget>[
                  Icon(MdiIcons.scoreboard),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text("Camp Nou",style: content,),
                    Text("Barcelona,اسبانيا",style: TextStyle(color: Colors.grey),),
                  ],),
                  SizedBox(width: 25,),
                  Card(
                      color: Colors.grey[200],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(MdiIcons.googleMaps,color: Colors.green[700],size: 22,),
                      ))
                ],),
                Divider(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Column(children: <Widget>[
                      Text("عشب",style: content,),
                      Text("سطح الملعب",style: TextStyle(color: Colors.grey)),
                    ],),
                    Column(children: <Widget>[
                      Text("99.787",style: content,),
                      Text("السعة",style: TextStyle(color: Colors.grey)),
                    ],),
                    Column(children: <Widget>[
                      Text("1957",style: content,),
                      Text("افتتح",style: TextStyle(color: Colors.grey),)
                    ],),
                  ],),
                )

              ],),
            )
            ),),
        ),

      ],),
    );
  }
}
Widget _Colnumm(text,img){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: <Widget>[
      Container(
        height:22,width:50,
        decoration:BoxDecoration(
            color:Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),),
      Container(margin: EdgeInsets.only(top: 20.0),height:25,width: 25,child: Image.asset(img))
    ],),
  );
}

List<String>text=["3 - 3","2 - 0","2 - 3","1 - 3","2 - 4"];
List<String>img=["assets/530.jpg","assets/541.jpg","assets/530.jpg","assets/541.jpg","assets/530.jpg"];