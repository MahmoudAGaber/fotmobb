import 'package:flutter/material.dart';

class leagues extends StatefulWidget {
  @override
  _leaguesState createState() => _leaguesState();
}
TextStyle _textStyle=TextStyle(color: Colors.grey,fontSize: 19);
TextStyle _textStyle1=TextStyle(color: Colors.green[600],fontSize: 15);
class _leaguesState extends State<leagues> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.tv,color: Colors.grey,size: 100,),
        Center(child: Text("الاخبار غير متوفرة",style: _textStyle,)),
        SizedBox(height: 10,),
        Center(child: Text("اعادة المحاولة",style: _textStyle1,))
      ],
    );
  }
}
