class LeagueN {

   String leagueName;
  bool _expanded;

   LeagueN(this.leagueName, this._expanded);


  @override
  String toString() {
    return 'LeagueN{leagueName: $leagueName, _expanded: $_expanded}';
  }

bool get expanded => _expanded;
  set expanded(bool value){
    _expanded =value;
  }

  String get _leagueName => leagueName;
  set _leagueName(String value){
    leagueName=value;
  }
}


List  favourites=[
  LeagueN("AustrliaPremierLeague", true),
  LeagueN( "AustrliaPremierLeague",true),
  LeagueN( "CandaPremierLeague",true),
  LeagueN( "ChinePremierLeague",true)

];




