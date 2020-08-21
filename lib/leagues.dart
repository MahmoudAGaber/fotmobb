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
    return Scaffold(
      appBar: AppBar(
        title: Text("Leagues"),
      ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: 110.0,
                color: Theme.of(context).primaryColor,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0,left: 28.0),
                      child: CircleAvatar(
                        radius: 13.0,
                        backgroundImage: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0,left: 26.0),
                      child: Text("Usre Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    )
                  ],),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.tv),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "Tv schedules",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.loop),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "Transfer Centre",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 400  ,),
              Divider(height: 2,),
              ListTile(
                leading: IconButton(icon: Icon(Icons.attach_money),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "Remove ads",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
              ),

              ListTile(
                leading:
                IconButton(icon: Icon(Icons.brightness_4),iconSize: 25.0,
                    onPressed: null),
                title:Text("Dark mode",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
                trailing: Switch(value: isSwitched, onChanged: (value){
                  setState(() {
                    isSwitched=value;
                  });
                }),

              ),

              ListTile(
                leading: IconButton(icon: Icon(Icons.settings),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),

              ),


            ],
          ),

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
                          SizedBox(width: 15,),
                          Icon(Icons.search,color: Colors.grey[600],),
                          SizedBox(width: 10,),
                          Expanded(
                            child: TextField(
                              obscureText: true,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration.collapsed(

                                hintText: "Find Leagues",hintStyle: TextStyle(fontSize: 15)
                              ),
                            ),
                          )

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



    );
  }

}
class MyTile{
  String title;
  List<MyTile> childern;
  MyTile(this.title,[this.childern=const <MyTile>[]]);
}

List<MyTile> listOfTiles =<MyTile>[
  new MyTile('Favourites',
<MyTile>[
  new MyTile("LaLiga"),
  new MyTile("Premier League")

]
  ),
  new MyTile('Suggested',
<MyTile>[

  new MyTile("Premier League"),
  new MyTile("Champions League Legue"),
  new MyTile("World Cup"),
  new MyTile("Serie A"),
  new MyTile("Europa League"),

]
  ),
  new MyTile('Rest of the world',
<MyTile>[
]
  ),
  new MyTile('Egypt',
      <MyTile>[
        new MyTile("LaLiga"),
        new MyTile("Premier League")
      ]
  ),
  new MyTile('International-National teams',
      <MyTile>[
        new MyTile("LaLiga"),
        new MyTile("Premier League")
      ]

  ),
  new MyTile('Alegeria',
      <MyTile>[
        new MyTile("LaLiga"),
        new MyTile("Premier League")
      ]
  ),
  new MyTile('Austrlia',
      <MyTile>[
        new MyTile("LaLiga"),
        new MyTile("Premier League")
      ]
  ),
  new MyTile('Argentina',
      <MyTile>[
        new MyTile("LaLiga"),
        new MyTile("Premier League")
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

