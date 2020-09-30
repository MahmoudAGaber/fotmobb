import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'favourites.dart';
import 'leagues.dart';
import 'matches.dart';
import 'news.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  PageController _pageController =PageController();

  int _selectedIndex = 0;
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex =index;
    });

  }
  void _onItemTapped(int selectedIndex){
    _pageController.jumpToPage(selectedIndex);
  }
  bool isSwitched = false;

  final List<Widget> _childern=[
    matches(),
    news(),
    Leagues(),
    Favourites(),

  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        body: PageView(
          controller: _pageController,
          children: _childern,
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          items: [

            BottomNavigationBarItem(
                icon:Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: new Icon(MdiIcons.soccerField,
                      color: _selectedIndex == 0 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey),
                ),
                title:Padding(
                  padding: const EdgeInsets.only(right: 10  ),
                  child: new Text("المباريات",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: _selectedIndex == 0 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey),),
                )
            ),

            BottomNavigationBarItem(
                icon:Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: new Icon(MdiIcons.newspaperVariant,
                      color: _selectedIndex == 1 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey
                  ),
                ),
                title:Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: new Text("الاخبار",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: _selectedIndex == 1 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey),),
                )
            ),

            BottomNavigationBarItem(
                icon: new Icon(MdiIcons.trophy,
                    color: _selectedIndex == 2 ? Color.fromRGBO(95, 31, 117, 1.0): Colors.grey
                ),
                title:new Text("الدوريات",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: _selectedIndex == 2 ? Color.fromRGBO(95, 31, 117, 1.0): Colors.grey),)
            ),

            BottomNavigationBarItem(
                icon:Icon(Icons.star,
                    color: _selectedIndex == 3 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey
                ),
                title:Text("المفضل",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: _selectedIndex == 3 ? Color.fromRGBO(95, 31, 117, 1.0) : Colors.grey),)
            ),




          ],


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
                      child: Text("اسم المستخدم",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    )
                  ],),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.tv),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "الجدول التلفزيوني",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                leading: IconButton(icon: Icon(Icons.loop),iconSize: 25.0,
                    onPressed: null),
                title: Text(
                  "الانتقالات",
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
                  "ازالة الاعلانات",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
              ),

              ListTile(
                leading:
                IconButton(icon: Icon(Icons.brightness_4),iconSize: 25.0,
                    onPressed: null),
                title:Text("الوضع الليلي",
                  style: TextStyle(
                      fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                ),
                trailing: Switch(value: isSwitched, onChanged: (value){
                  setState(() {
                    isSwitched=value;
                  });
                }),

              ),

              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/setting');
                },
                child: ListTile(
                  leading: IconButton(icon: Icon(Icons.settings),iconSize: 25.0,
                      onPressed: null),
                  title: Text(
                    "الاعدادات",
                    style: TextStyle(
                        fontSize: 14,color:  Colors.black,fontWeight: FontWeight.w400),
                  ),

                ),
              ),


            ],
          ),

        ),

      ),
    );
  }
}

