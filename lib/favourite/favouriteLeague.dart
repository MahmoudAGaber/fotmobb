import 'package:flutter/material.dart';

class favouriteLeague extends StatefulWidget {
  @override
  _favouriteLeagueState createState() => _favouriteLeagueState();
}

class _favouriteLeagueState extends State<favouriteLeague> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: GestureDetector(
              onTap: ()=>addDialog(context),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    border: Border.all(width: 1,color: Colors.grey,)
                ),
                child: Stack(children: <Widget>[
                  Center(
                    child: Container(
                      height: 80,
                      width: 2,
                      color: Colors.green[700],
                    ),

                  ),
                  Center(
                    child: Container(
                      height: 2,
                      width: 80,
                      color: Colors.green[700],
                    ),
                  )]
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("لا تفضيلات تمت اضافتها")
            ],),
        )
      ],

      ),
    );
  }
  addDialog(BuildContext context){
    return showDialog(context: context,builder: (context) {
      return Dialog(
          insetPadding: EdgeInsets.only(top: 20,right: 10,left: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          child:Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
                  child: Row(children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_forward,color: Colors.grey[500],),onPressed: (){
                      Navigator.pop(context);
                    },),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration.collapsed(
                          hintText: "البحث عن الفرق،المقابلات،اللاعبين،الاخبار،البطولات",hintStyle: TextStyle(fontSize: 16,),
                        ),
                      ),

                    ),
                  ],),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context,index){
                        return Container(
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(children: <Widget>[
                                    Container(height: 30,width: 30,
                                      child: Image.asset("assets/12.jpg"),),
                                    SizedBox(width: 10,),
                                    Text("اسبانيا-الدوري الاسباني الدرجة الاولي   ")
                                  ],),
                                ),
                                IconButton(icon: Icon(Icons.star_border), onPressed: null)
                              ],),
                          ),
                        );
                      }),
                ),
              ],

            ),
          )
      );
    });
  }
}
