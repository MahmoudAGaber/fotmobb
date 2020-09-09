import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/util.dart';

class overView extends StatefulWidget {
  @override
  _overViewState createState() => _overViewState();
}

class _overViewState extends State<overView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      minimum: EdgeInsets.only(bottom: 10.0),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:5.0,left: 5,right: 5),
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8,right: 12),
                  child: Row(children: <Widget>[Text("المبارة التالية",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                    Text("غدا",style: TextStyle(color: Colors.grey),),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 20,
                        decoration: BoxDecoration(
                            color:Colors.grey[100],
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3,right: 3),
                          child: Text("دوري الاسباني ",style: TextStyle(color: Colors.grey[700],
                              fontSize: 13),),
                        )),
                  )
                  ],),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 80,right: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("ريال مدريد"),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image.asset("assets/541.jpg"),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Center(child: Text("7:35 م")),
                        SizedBox(width: 6),
                        Container(
                          width: 30,
                          height: 25,
                          child: Image.asset("assets/530.jpg"),
                        ),
                        Text("اتليتكو"),
                      ],
                    ),
                  ),
              ],),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            height: 140,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Text("المباريات الخمس الاخيرة",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15))
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
                                  Expanded(child: Text("ريال مدريد يفقد لاعبان امام اتليتكو , مارسيلو الباك الشمال و راموس",style: TextStyle(fontSize: 13),
                                    overflow: TextOverflow.visible,))],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:10,right: 15),
                            child: Row(children: <Widget>[Text("36 يوم مضت,10:51م",style: TextStyle(color: Colors.grey,fontSize: 12),)],),
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
                      Text("اخر الاخبار")],)),
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
                  Text("الدوري الاسباني")],),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "فريق",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 120.0,
                      ),
                      Text(
                        "م",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 21.0,
                      ),
                      Text(
                        "ف",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        "ت",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text(
                        "خ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 19.0,
                      ),
                      Text(
                        "-/+",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "=",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "ن",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
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
                                      Text("ريال مدريد"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Text("23"),
                              Text("20"),
                              Text("2"),
                              Text("1"),
                              Text("8-56"),
                              Text("48"),
                              Text("62"),
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
              height: 390,
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
                                Container(
                                  height: 145,
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
                                                      SizedBox(height: 30,),
                                                      Text("8",style: TextStyle(fontSize: 20,color: Colors.white),),
                                                    ],),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 15),
                                                    child: Column(mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[
                                                            Container(
                                                              height: 65,width: 60,
                                                              child: Image.asset("assets/530.jpg",fit: BoxFit.fill,),)
                                                      ],),
                                                  ),
                                    ]
                                                        ),
                                              )
                                            ])
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(children: <Widget>[
                                       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              width: 80,
                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: <Widget>[
                                                Container(
                                                  height: 25,width: 25,
                                                  child: Image.asset("assets/530.jpg"),
                                                ),
                                                Text("ميسي")
                                              ],),
                                            ),
                                            Text("7.40")
                                          ]
                                      ),
                                    SizedBox(height: 20.0,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            width: 80,
                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Container(
                                                  height: 25,width: 25,
                                                  child: Image.asset("assets/530.jpg"),
                                                ),
                                                Text("ميسي")
                                              ],),
                                          ),
                                          Text("7.40")
                                        ]
                                    ),
                                      Divider(height: 20,),
                                    
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
          child: Container(
            height: 160,width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text("الكؤوس"),
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
                    Text("اخر فوز 2014",style: TextStyle(color: Colors.grey,fontSize: 13),),
                    SizedBox(height: 30,),
                    Text("اخر فوز 2016/2017",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  ],),
                ),
                SizedBox(width: 50,),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[
                    Text("CAF Super Cup"),
                    SizedBox(height: 30,),
                    Text("Cup")
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
            height: 180,width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),),),
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
        height:21,width:50,
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