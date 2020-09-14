import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class postions extends StatefulWidget {
  @override
  _postionsState createState() => _postionsState();
}

class _postionsState extends State<postions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 11.0),
                    width: 40,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        border:
                        Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("كل",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.5)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        border:
                        Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("الذهاب",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.5)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0, right: 10.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.grey[300]),
                    ),
                    child: Center(
                      child: Text(
                        "الاياب",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.5),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: 10.0, right: 133.0),
                    width: 60,
                    height: 27,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(20)),
                        border:
                        Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Text("تشكيل",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.5)),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width*0.42,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                          Text(
                            "#",
                            style: TextStyle(color: Colors.grey),
                          ),
                            SizedBox(width: 50,),
                          Text(
                            "فريق",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.34,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3,right: 8),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "م",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 25,),
                            Text(
                              "ف",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              "ت",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 19,),
                            Text(
                              "خ",
                              style: TextStyle(color: Colors.grey),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.24,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "-/+",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "=",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 25,),
                          Text(
                            "ن",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            itemCount: 18,
            itemBuilder: (BuildContext context, index) {
              return Column(children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/eachTeam');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("1"),
                                Container(
                                  child: Container(
                                      width: 40,
                                      height: 28,
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
                  ),
                ),
                Divider(
                  height: 2.0,
                  color: Colors.grey,
                )
              ]);
            }),
      ],
    );
  }
}
