import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cups extends StatefulWidget {
  @override
  _cupsState createState() => _cupsState();
}

class _cupsState extends State<cups> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  Container(height: 45,width: 45,
                  child: Image.asset("assets/12.jpg"),),
                  Column(children: <Widget>[
                    Text("LaLiga",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                    Text("اسبانيا",style: TextStyle(color: Colors.grey),)
                  ],
                  )
                ],),
                Divider(height: 20,),
                Row(children: <Widget>[Text("الفائز (34)",style: TextStyle(color: Colors.grey),)],),
                Padding(
                  padding: const EdgeInsets.only(left: 63,bottom: 8,top: 8),
                  child: Row(children: <Widget>[
                    Expanded(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                            "2019/2020,2016/2017,2011/2012,2007/2008"
                            "2006/2008,1931/1932,1932/1933,1953/1954,"
                            "1956/1957,1957/1958,1960/1961,1961/1962,"
                            "1962/1963,1963/1964,1964/1965,1965/1966,"
                            "1966/1967,1967/1968,1968/1969,1970/1971,"
                            "1974/1975",overflow:TextOverflow.visible,),
                    ),
                  )],),
                ),
                Row(children: <Widget>[Text("الوصيف (23)",style: TextStyle(color: Colors.grey),)],),
                Padding(
                  padding: const EdgeInsets.only(left: 63,bottom: 8,top: 8),
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text("2019/2020,2016/2017,2011/2012,2007/2008,"
                          "2006/2008,1931/1932,1932/1933,1953/1954,1954/1955,"
                          "1956/1957,1957/1958,1960/1961,1961/1962"
                          ",1962/1963,1963/1964,1964/1965,1965/1966,"
                          ,overflow:TextOverflow.visible,),
                    )],),
                )
              ],),
            )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    Row(children: <Widget>[
                      Container(height: 45,width: 45,
                        child: Image.asset("assets/541.jpg"),),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Text("Champions League",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                        Text("دولي",style: TextStyle(color: Colors.grey),)
                      ],
                      )
                    ],),
                    Divider(height: 20,),
                    Row(children: <Widget>[Text("الفائز (34)",style: TextStyle(color: Colors.grey),)],),
                    Padding(
                      padding: const EdgeInsets.only(left: 63,bottom: 8,top: 8),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              "2019/2020,2016/2017,2011/2012,2007/2008"
                                  "2006/2008,1931/1932,1932/1933,1953/1954,"
                                  "1956/1957,1957/1958,1960/1961,1961/1962,"
                                  ,overflow:TextOverflow.visible,),
                          ),
                        )],),
                    ),
                    Row(children: <Widget>[Text("الوصيف (23)",style: TextStyle(color: Colors.grey),)],),
                    Padding(
                      padding: const EdgeInsets.only(left: 63,bottom: 8,top: 8),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Text("2019/2020,2016/2017,2011/2012,2007/2008,"
                            ,overflow:TextOverflow.visible,),
                        )],),
                    )
                  ],),
                )
            ),
          ),
        )
      ],
    );
  }
}
