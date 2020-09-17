import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class transferCenter extends StatefulWidget {
  @override
  _transferCenterState createState() => _transferCenterState();
}
const TextStyle _textStyle=TextStyle(color: Colors.black54,fontSize: 13);
class _transferCenterState extends State<transferCenter> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("مركز الانتقالات"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.notifications_none),
            ),
          ],
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 10,bottom: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text("أبرز التحويلات"),
            ),
          ),
          ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 20,
              itemBuilder: (BuildContext context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                  Container(
                    height: 65,width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                        child: Image.asset("assets/Marcelo.jpg")),
                  ),),
                    Text("مارسيلو"),
                    SizedBox(height: 5,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("ريال مدريد"),
                        Container(
                            width: MediaQuery.of(context).size.width*0.24,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(width: 30,height: 30,
                                    child: Image.asset("assets/541.jpg"),),
                                  Container(
                                      width: 20,height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(100))),
                                      child: Icon(Icons.arrow_back,size: 15,color: Colors.white,)),
                                  Container(width: 30,height: 30,
                                    child: Image.asset("assets/530.jpg"),),
                                ],),
                            )
                        ),
                        Text(" اتليتكو مدريد"),
                      ],),
                    SizedBox(height: 5,),
                    Text("المبلغ 8.4 مليون عقد سبتمبر 2020 - يونيو 2024",style: _textStyle,),
                    Text("القيمة السوقية 27 مليون",style: _textStyle,),
                ],),
              ),),
            );
          })
        ],),
      ),
    );
  }
}
