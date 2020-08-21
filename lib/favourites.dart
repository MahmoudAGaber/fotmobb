import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> with SingleTickerProviderStateMixin{
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
        appBar:AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: <Widget>[
                  Icon(Icons.edit),
                  SizedBox(width: 15,),
                  Icon(Icons.add)
                ],
              ),
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Favourites"),
          bottom:TabBar(
            isScrollable: true,
            controller: tabController,
            labelColor: Colors.white,
            indicatorColor: Colors.yellow[500],
            labelPadding: EdgeInsets.only(right: 50),
            tabs:<Widget>[

               Tab(text: "TEAMS",),
                Tab(text: "PLAYER",),
              Tab(text: "LEAGUES",),

            ],

          ),
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
        body: TabBarView(controller: tabController, children:[

          Scaffold(

          ),
          Scaffold(
            body: Container(
              width: 30,
              height: 25,
              child: Image.asset("assets/"),
            ),
          ),
          Scaffold()
    ]

    )
    );
  }
}
