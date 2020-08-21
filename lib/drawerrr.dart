import 'package:flutter/material.dart';

class fundrawer extends StatefulWidget {
  @override
  _fundrawerState createState() => _fundrawerState();
}

class _fundrawerState extends State<fundrawer> {
  bool isSwitched;
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          SizedBox(height: 450  ,),
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
    );
  }
}
