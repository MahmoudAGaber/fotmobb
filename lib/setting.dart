import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

  TextStyle _textStyle=TextStyle(fontSize: 16);
TextStyle _textStyle1=TextStyle(color: Colors.grey,fontSize: 14);

class _settingState extends State<setting> {
  final _scaffoldkey=new GlobalKey<ScaffoldState>();
  VoidCallback _showpersBottomSheetCallBack;
  @override
  void initState(){
    super.initState();
    _showpersBottomSheetCallBack=_bottomSheet;
  }
  void _bottomSheet() {
    setState(() {
      _showpersBottomSheetCallBack = null;
    });

    _scaffoldkey.currentState.showBottomSheet((BuildContext context){
      return new Container(
        height: 280,width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
           Row(children: <Widget>[ Text("تابعنا",style: _textStyle,)],),
            Divider(height: 15,),
            Row(children: <Widget>[
              Icon(MdiIcons.facebook,size: 30,color: Colors.blue[800],),
              SizedBox(width: 10,),
              Text("Facebook",style: _textStyle,)
            ],),

            Row(children: <Widget>[
              Icon(MdiIcons.instagram,size: 30,color: Colors.black),
              SizedBox(width: 10,),
              Text("Instagram",style: _textStyle,)
            ],),

            Row(children: <Widget>[
              Icon(MdiIcons.twitter,size: 30,color: Colors.blue,),
              SizedBox(width: 10,),
              Text("Twitter",style: _textStyle,)
            ],),

              Divider(),

              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(child: Text("الغاء",style: TextStyle(color:Theme.of(context).primaryColor),),onTap: (){
                    Navigator.pop(context);
                  },),
                )
              ],)

          ],),
        )
      );
    }).closed.whenComplete((){
      if(mounted){
        setState(() {
          _showpersBottomSheetCallBack=_bottomSheet;
        });
      }
    });

  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text("اعدادات"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
          child: ListView(
            children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'/tv');
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
            SizedBox(height: 35,),
            Row(children: <Widget>[
              Container(height: 40,width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.all(Radius.circular(100)),),
                child: Icon(Icons.brightness_4,color: Colors.white,size: 28,),),
              SizedBox(width: 15,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(" ثيم",style: _textStyle,),
                  Text("فاتح ",style: _textStyle1,)
                ],)
            ],),

              SizedBox(height: 35,),

            Row(children: <Widget>[
              Container(height: 40,width: 40,
                decoration: BoxDecoration(
                  color: Colors.purple[600],
                  borderRadius: BorderRadius.all(Radius.circular(100)),),
                child: Icon(Icons.language  ,color: Colors.white,size: 28,),),
              SizedBox(width: 15,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(" لغة الواجهة ",style: _textStyle,),
                  Text("اللغة العربية ",style: _textStyle1,)
                ],)
            ],),

              SizedBox(height: 35,),

            GestureDetector(
              onTap: (){
                final RenderBox box = context.findRenderObject();
                Share.share('https://www.youtube.com/',sharePositionOrigin:
                box.localToGlobal(Offset.zero) &
                box.size);
              },
              child: Row(children: <Widget>[
                Container(height: 40,width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(100)),),
                  child: Icon(Icons.share,color: Colors.white,size: 28,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("مشاركة هذا التطبيق ",style: _textStyle,),
                  ],)
              ],),
            ),

              SizedBox(height: 35,),

              GestureDetector(
                onTap: _showpersBottomSheetCallBack,
                child: Row(children: <Widget>[
                  Container(height: 40,width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(100)),),
                    child: Icon(Icons.local_florist,color: Colors.white,size: 28,),),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("تابعنا",style: _textStyle,),
                    ],)
                ],),
              ),

              SizedBox(height: 35,),

              Row(children: <Widget>[
                Container(height: 40,width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(100)),),
                  child: Icon(Icons.not_listed_location,color: Colors.white,size: 28,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("الدعم ",style: _textStyle,),
                  ],)
              ],),

          ],),
        ),
      ),
    );
  }
}
