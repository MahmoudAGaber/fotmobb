class matchesData {

   String leagueName;
  bool _expanded;

  matchesData(this.leagueName, this._expanded);


  @override
  String toString() {
    return 'matchesData{leagueName: $leagueName, _expanded: $_expanded}';
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
  matchesData("AustrliaPremierLeague", true),
  matchesData( "AustrliaPremierLeague",true),
  matchesData( "CandaPremierLeague",true),
  matchesData( "ChinePremierLeague",true)

];




