import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class transference extends StatefulWidget {
  @override
  _transferenceState createState() => _transferenceState();
}

const TextStyle _textStyle=TextStyle(color: Colors.grey);
const TextStyle _textStyle1=TextStyle(fontSize: 14,color: Colors.grey);

class _transferenceState extends State<transference> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap:(){ Navigator.pushNamed(context, '/transferCenter');
            },
            child: Card(
              elevation: 2.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child:Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Container(child: Row(
                      children: <Widget>[
                        Text("CENTER",style: TextStyle(fontSize: 15),),
                        Text("TRANSFER",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),),
                        Icon(MdiIcons.cogTransfer)
                      ],
                    ),),
                    Icon(Icons.arrow_back_ios,size: 18,)


                  ],),
              )
              ),
          ),
        ),
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(children: <Widget>[
                            Text("ابرز التحويلات",style: _textStyle,)
                        ],
                        ),
                         ),
                      ],

                      ),

                ),
              ),
            ),
               Positioned(
                 top: 65,
                 child: Container(
                   width: MediaQuery.of(context).size.width,
                   height: 130,
                   child: ListView.builder(
                     padding: EdgeInsets.only(right: 25,left: 25),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemCount: 5,
                      itemBuilder: (BuildContext context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/transferCenter');
                      },
                      child: Container(
                        width: 200,
                        child: Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                Text("راموس"),
                                Text("2 ايام مضت",style: _textStyle1,)
                              ],
                              ),
                            ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 10,left: 10),
                                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.21,
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 1),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                        Container(width: 30,height: 30,
                                        child: Image.asset("assets/541.jpg"),),
                                        Container(
                                            width: 18,height: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.all(Radius.circular(100))),
                                          child: Icon(Icons.arrow_back,size: 15,color: Colors.white,)),
                                        Container(width: 30,height: 30,
                                          child: Image.asset("assets/541.jpg"),)
                                      ],),
                                    )
                                  ),
                                  Container(width: 55,height: 55,
                                  child: Image.asset("assets/Marcelo.jpg"),)
                              ],),
                               ),
                          ],),
                        ),
                      ),
                    );
              }),
                 ),
               ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13,right: 13,top: 10),
          child: Container(
            child: Column(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child:Image.asset("assets/6.jpg"),),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(child: Text("رئيس اتليتكو مدريد يحسم الجدل بشأن رحيل اوبلاك ألي تشيلسي ",overflow: TextOverflow.visible,)),
                  ],),
                  SizedBox(height: 10,),
                  Row(
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
                ],
                ),
              )
            ],),
          ),
        )
      ],
    );
  }
}
