import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

 const TextStyle tapbar = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w500);
TextStyle _textStyletitle = TextStyle(fontSize: 18);
TextStyle _textStyle=TextStyle(fontSize: 16);
TextStyle _textStyle1=TextStyle(color: Colors.grey,fontSize: 14);


class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("المزيد",style: _textStyletitle,),
      ),
      body: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 130,
                child: Row(children: <Widget>[
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                    Container(
                        height: 38,width: 38,
                        decoration:BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                        child: Icon(Icons.tag_faces,color: Colors.white,)),
                  ],),
                SizedBox(width: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Container(
                    width: 310,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Text("يمكننا الحفاظ علي اعداداتك بأمان بحيث يمكنك مزامنتها عبر الاجهزة او استرجاعها عند اقتناء جهاز جديد",overflow: TextOverflow.visible,),
                    SizedBox(height: 15,),
                    Text("سجل الدخول",style: TextStyle(color: Colors.green),)
                    ],
                    )),
                ],),


          ],),
              ),
            ),
        Divider(),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/transferCenter');
              },
              child: Row(children: <Widget>[
                Container(height: 40,width: 40,
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.all(Radius.circular(100)),),
                  child: Icon(Icons.loop,color: Colors.white,size: 28,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("مركز الانتقالت",style: _textStyle,),
                  ],)
              ],),
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/tv');
              },
              child: Row(children: <Widget>[
                Container(height: 40,width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.all(Radius.circular(100)),),
                  child: Icon(Icons.tv,color: Colors.white,size: 28,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("القنوات الناقلة",style: _textStyle,),
                    Text("الشرق الاوسط",style: _textStyle1,)
                  ],)
              ],),
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/setting');
              },
              child: Row(children: <Widget>[
                Container(height: 40,width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(100)),),
                  child: Icon(Icons.settings,color: Colors.white,size: 28,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("الاعدادت ",style: _textStyle,),
                  ],)
              ],),
            ),
          ],),
        )

      ],),
    );
  }
}
