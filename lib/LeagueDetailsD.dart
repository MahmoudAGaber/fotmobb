import 'package:flutter/material.dart';

import 'Matches/LeagueN.dart';

class LeagueDetails{
  final LeagueN leagueN;
  final List<LeagueDetails1> childern;
  LeagueDetails(this.leagueN,[this.childern=const <LeagueDetails1>[]]);
}

class LeagueDetails1{
  final String firstTeam;
  final String seconTeam;
  final String urlFirst;
  final String urlSecond;
  final String time;

  LeagueDetails1(
      this.firstTeam, this.seconTeam, this.urlFirst, this.urlSecond, this.time);
}

final LeagueN l1= LeagueN("الدوري الاسباني","assets/12.jpg",true);
final LeagueN l2= LeagueN("الدوري الاسباني","assets/12.jpg", true);
final LeagueN l3= LeagueN("الدوري الاسباني","assets/12.jpg",true);
final LeagueN l4= LeagueN("الدوري الاسباني","assets/12.jpg",true);
final LeagueN l5= LeagueN("الدوري الاسباني","assets/12.jpg", true);
final LeagueN l6= LeagueN("الدوري الاسباني","assets/12.jpg",true);
final LeagueN l7= LeagueN("الدوري الاسباني","assets/12.jpg",true);

List<LeagueN> leaguen =[
  LeagueN("الدوري الاسباني ","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),
  LeagueN("الدوري الاسباني","assets/12.jpg", true),

];


List<LeagueDetails> leaguedetails=<LeagueDetails>[
  new LeagueDetails(l1,
  <LeagueDetails1>[
    new LeagueDetails1('ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ," 9:45 م"),
    new LeagueDetails1('ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ," 9:45 م"),
  ],
  ),
  new LeagueDetails(l2,
    <LeagueDetails1>[
      new LeagueDetails1('ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ," 9:45 م"),

    ],
  ),
  new LeagueDetails(l3,
    <LeagueDetails1>[
      new LeagueDetails1('ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ," 9:45 م"),
    ],
  ),




];

