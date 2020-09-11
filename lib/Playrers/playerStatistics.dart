import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class playerStatistics extends StatefulWidget {
  @override
  _playerStatisticsState createState() => _playerStatisticsState();
}

class _playerStatisticsState extends State<playerStatistics> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(right: 130,top: 10,bottom: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Icon(MdiIcons.scoreboard),
              Icon(Icons.assignment),
              Icon(MdiIcons.soccer),
              Icon(MdiIcons.shoePrint),
              Container(height: 20,width: 15,decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(4))
              ),),
              Container(height: 20,width: 15,decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(4))
              ),),
              Icon(Icons.star)
            ],),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Container(height: 30,width: 30,)
            ],
            )
          ],),
        )
      ],
    );
  }
}
