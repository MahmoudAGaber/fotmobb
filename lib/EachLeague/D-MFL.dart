class DMFL {
  final firstTeam;
  final secondTeam;
  final firstImg;
  final secondImg;
  final result;
  final List<DMFL> childern;

  DMFL(this.firstTeam, this.secondTeam, this.firstImg, this.secondImg,
      this.result,[this.childern=const <DMFL>[]]);
}

List<DMFL>_DMFL=[DMFL("1", "secondTeam", "firstImg", "secondImg", "result")];