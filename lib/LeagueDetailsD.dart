import 'package:flutter/material.dart';

import 'Matches/LeagueN.dart';

class LeagueDetails{
  final LeagueN leagueN;
  final String firstTeam;
  final String seconTeam;
  final String urlFirst;
  final String urlSecond;
  final String time;

  LeagueDetails(this.leagueN, this.firstTeam, this.seconTeam, this.urlFirst,
      this.urlSecond, this.time);
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

List<LeagueDetails> leaguedetails=[
  LeagueDetails(l1,'ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ," 9:45 م"),
  LeagueDetails(l1,'ريال مدريد', 'اتليتكو', 'assets/11.jpg', 'assets/530.jpg' ,"9:45 م"),

];
