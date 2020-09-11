import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class playerTransference extends StatefulWidget {
  @override
  _playerTransferenceState createState() => _playerTransferenceState();
}
const TextStyle _textStyle=TextStyle(color: Colors.grey,fontSize: 13);
const TextStyle _textStyle1=TextStyle(color: Colors.grey,);

class _playerTransferenceState extends State<playerTransference> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("مهنة الكبار"),
              Container(child: Row(children: <Widget>[
                Icon(MdiIcons.scoreboard),
                SizedBox(width: 10,),
                Icon(MdiIcons.soccer),
              ],),)
            ],),
            ListView.builder(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context,index){
              return  Padding(
                padding: const EdgeInsets.only(right: 20,top: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(child: Row(children: <Widget>[
                    Container(height: 45,width: 45,
                      child: Image.asset("assets/541.jpg"),),
                    SizedBox(width: 15,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text("ريال مدريد"),
                      Text("يناير 2007 - الان",style: _textStyle,),
                    ],)
                  ],),),
                  Container(child: Row(children: <Widget>[
                    Text("531"),
                    SizedBox(width: 10,),
                    Text("44"),
                  ],
                  ),)

                ],),
              );
            },
            )
          ],),
        )
          ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5),
        child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(" الفريق الوطني"),
                    Container(child: Row(children: <Widget>[
                      Icon(MdiIcons.scoreboard),
                      SizedBox(width: 10,),
                      Icon(MdiIcons.soccer),
                    ],),)
                  ],),
                ListView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context,index){
                    return  Padding(
                      padding: const EdgeInsets.only(right: 20,top: 25),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(child: Row(children: <Widget>[
                            Container(height: 45,width: 45,
                              child: Image.asset("assets/12.jpg"),),
                            SizedBox(width: 15,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("ريال مدريد"),
                                Text("يناير 2007 - الان",style: _textStyle,),
                              ],)
                          ],),),
                          Container(child: Row(children: <Widget>[
                            Text("56"),
                            SizedBox(width: 10,),
                            Text("5"),
                          ],
                          ),)



                        ],),
                    );
                  },

                )

              ],),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15,top: 10,bottom: 15),
        child: Row(children: <Widget>[
          Icon(MdiIcons.scoreboard,color: Colors.grey,size: 17,),
          SizedBox(width: 4,),
          Text("data",style:_textStyle1,),
          SizedBox(width: 15,),
          Icon(MdiIcons.soccer,color: Colors.grey,size: 17,),
          SizedBox(width: 4,),
          Text("data",style: _textStyle1,),
        ],),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15,bottom: 15),
        child: Row(children: <Widget>[
          Text("* قد يكون عدد الاهداف والمباريات قبل 2006 غير صحيح في بعض الحالات",style: TextStyle(color: Colors.grey),)
        ],),
      )
    ],);
  }
}

