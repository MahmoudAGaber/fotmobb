import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fotmobb/trendingData.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Leagues extends StatefulWidget {
  @override
  _LeaguesState createState() => _LeaguesState();
}

class _LeaguesState extends State<Leagues> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  bool isSwitched=false;
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
            Text("الدوريات",)
            ],
            ),
          )

        ),

        body:
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 53,
                        child:
                        Card(
                          elevation: 2  ,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6),
                          ),),
                          child: Row(children: <Widget>[
                            SizedBox(width: 10,),
                            Icon(Icons.search,color: Colors.grey[600],),
                            SizedBox(width: 10,),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                textCapitalization: TextCapitalization.sentences,
                                decoration: InputDecoration.collapsed(
                                  hintText: "ابحث عن الدوري",hintStyle: TextStyle(fontSize: 15),
                                ),
                              ),

                            ),


                          ],),
                        ),
                      ),
                    ),
                  ),
                ),
                 new ListView.builder(
                   physics: ClampingScrollPhysics(),
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                  itemCount: listOfTiles.length,
                  itemBuilder: (BuildContext context , int index){
                    return new StuffInTiles(listOfTiles[index]);
                  },
                ),
              ],

            ),
          )



      ),
    );
  }

}
class MyTile{
  String title;
  List<MyTile> childern;
  MyTile(this.title,[this.childern=const <MyTile>[]]);
}

List<MyTile> listOfTiles =<MyTile>[
  new MyTile('المفضل',
<MyTile>[
  new MyTile("الدوري الاسباني"),
  new MyTile(" الدوري الانجليزي")

]
  ),
  new MyTile('المقترح',
<MyTile>[

  new MyTile("الدوري الانجليزي"),
  new MyTile("دوري ابطال اوروبا"),
  new MyTile("كاس العالم"),
  new MyTile("الدوري الايطالي "),
  new MyTile("الدوري الاوربي "),

]
  ),
  new MyTile('دوربات العالم',
<MyTile>[
]
  ),
  new MyTile('مصر',
      <MyTile>[
        new MyTile("الدوري المصري الممتاز "),
        new MyTile("الدوري المصري درجه تانيه")
      ]
  ),
  new MyTile('الفرق العالميه',
      <MyTile>[
        new MyTile("برشلونه"),
        new MyTile("ربال مدريد")
      ]

  ),
  new MyTile('الجزائر',
      <MyTile>[

        new MyTile("الدوري الممتاز"),
        new MyTile("الدرجه التانيه")
      ]
  ),
  new MyTile('استراليا',
      <MyTile>[
        new MyTile("الدوري الممتاز"),
        new MyTile("الدرجه التانيه")
      ]
  ),
  new MyTile('الارجنتين',
      <MyTile>[
        new MyTile("الدوري الدرجه الاولي "),
        new MyTile("الدرجه الثانيه")
      ]
  ),


];
class StuffInTiles extends StatelessWidget{

  final MyTile myTile;
  StuffInTiles(this.myTile);

  @override
  Widget build(BuildContext context) {

    return _buildTiles(myTile);
  }
  Widget _buildTiles(MyTile t){

    if(t.childern.isEmpty){
      return new ListTile(title: Text(t.title),);
    }
    return  new ExpansionTile(
      key: new PageStorageKey<MyTile>(t),
      leading: Icon(MdiIcons.soccer),
      title: new Text(t.title),
        children: t.childern.map(_buildTiles).toList(),
    );
  }

}

