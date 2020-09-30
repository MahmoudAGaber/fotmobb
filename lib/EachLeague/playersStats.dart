import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class playersStats extends StatefulWidget {
  @override
  _playersStatsState createState() => _playersStatsState();
}

class _playersStatsState extends State<playersStats> {

  TextStyle head = TextStyle(fontSize: 13.5);
  TextStyle content = TextStyle(fontSize: 15);
  TextStyle content2 = TextStyle(fontSize: 13.5,color: Colors.grey);
  TextStyle number = TextStyle(fontSize: 20,);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          itemCount: 8,
            itemBuilder: (BuildContext context,index){
            return Container(
              height: 295,
              child:Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(children: <Widget>[
                  Container(
                    color: Colors.grey[100],
                    height: 130,
                    child:GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/players');
                      },
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(top: 5,right: 15),
                             child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                              Row(children: <Widget>[ Text("اهداف",style: head,)]),
                              SizedBox(height:8 ,),
                              Text("مارسيلو ",style:content,),
                              Text("ريال مدريد",style: content2,),
                              Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("10",style: number,),
                                ],)
                        ],),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(mainAxisAlignment:MainAxisAlignment.end,children: <Widget>[ Container(
                              height: 60,width: 60,
                              child: Image.asset("assets/Marcelo.jpg"))],),
                        )
                ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 8),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/players');
                      },
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        Row(children: <Widget>[
                          Container(height: 30,width: 30,
                          child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                              child: Image.asset("assets/Marcelo.jpg",))),
                          SizedBox(width: 5,), Text("مارسيلو")]),
                        Text("10",style: TextStyle(fontSize: 17),),
                      ],),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/players');
                      },
                      child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: <Widget>[
                        Row(children: <Widget>[
                          Container(height: 30,width: 30,
                              child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(100)),
                                  child: Image.asset("assets/Marcelo.jpg",))),
                          SizedBox(width: 5,), Text("مارسيلو")]),
                        Text("10",style: TextStyle(fontSize: 17),),
                      ],),
                    ),
                  ),
                  Divider(height: 2,),
                 Padding(
                   padding: const EdgeInsets.only(top: 8,bottom: 8,right: 15),
                   child: GestureDetector(onTap: (){},
                       child: Row(children: <Widget>[ Text("عرض الكل",style: TextStyle(color: Colors.grey,fontSize: 15),) ],)),
                 )
                ],),
              ) ,
            );
            }),
      ),
    );
  }
}
