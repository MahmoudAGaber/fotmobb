import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class playerMatches extends StatefulWidget {
  @override
  _playerMatchesState createState() => _playerMatchesState();
}
const TextStyle _textStyle=TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500);

TextStyle head = TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
TextStyle content = TextStyle(fontSize: 13.5);
TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
TextStyle content3 = TextStyle(fontSize: 12);
TextStyle content4= TextStyle(fontSize: 12,color: Colors.grey);
TextStyle number = TextStyle(fontSize: 18,fontWeight: FontWeight.w400);

class _playerMatchesState extends State<playerMatches> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(bottom: 8,top: 8),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          itemCount:15,
          itemBuilder: (BuildContext context,index){
           return Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'/matchInfo_a');
              },
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 250,
                          child: Row(children: <Widget>[
                            Container(height: 20,width: 20,
                              child: Image.asset("assets/541.jpg"),),
                            SizedBox(width: 5,),
                            Expanded(child: Text("دوري ابطال اوربا ",style: content,overflow: TextOverflow.visible,)),
                          ],),
                        ),
                      Text("2020/08/07",style:_textStyle,)
                    ],),
                  ),
                  Divider(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 70,right: 70,top: 10,bottom: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("ريال مدريد",style: content,),
                      Container(height: 30,width: 30,
                      child: Image.asset("assets/541.jpg"),),
                      Text("3 - 1",style: number),
                        Container(height: 30,width: 30,
                          child: Image.asset("assets/530.jpg"),),
                      Text("اتليتكو",style: content,)
                    ],),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Text("د 90",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                      SizedBox(width: 15,),
                      Text("تقييم",style: _textStyle,),
                      SizedBox(width: 5,),
                      Container(height: 20,width: 40,
                      decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Center(child: Text("7.8",style: TextStyle(color: Colors.white),)),)
                    ],),
                  )
                ],),
              )
                ),
            ),
          );
      }),
    );
  }
}
