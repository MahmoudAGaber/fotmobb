class LeagueN {

   String leagueName;
   String img;
  bool _expanded;

   LeagueN(this.leagueName,this.img, this._expanded);


  @override
  String toString() {
    return 'LeagueN{leagueName: $leagueName,img: $img,, _expanded: $_expanded}';
  }

bool get expanded => _expanded;
  set expanded(bool value){
    _expanded =value;
  }

  String get _leagueName => leagueName;
  set _leagueName(String value){
    leagueName=value;
  }

   String get _img => leagueName;
   set _img(String value){
     img=value;
   }
}


List  favourites=[
  LeagueN("AustrliaPremierLeague","assets/12.jpg" ,true),
  LeagueN( "AustrliaPremierLeague","assets/12.jpg",true),
  LeagueN( "CandaPremierLeague","assets/12.jpg",true),
  LeagueN( "ChinePremierLeague","assets/12.jpg",true)

];




