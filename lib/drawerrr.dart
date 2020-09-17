import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IsSwitched()),
      ],
      child: MyApp(),
    ),
  );
}
 class IsSwitched with ChangeNotifier ,DiagnosticableTreeMixin{

  bool _isSwitched = true;
  bool get isSwitched =>_isSwitched;

  void change(){
    _isSwitched=false;
    notifyListeners();
  }

}
class fundrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Provider<MyModel>(
        create:(context) => MyModel(),
        child: Column(
          children: <Widget>[
            Container(
              height: 110.0,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 28.0),
                    child: CircleAvatar(
                      radius: 13.0,
                      backgroundImage: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 26.0),
                    child: Text(
                      "اسم المستخدم",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/tv');
              },
              child: ListTile(
                leading: IconButton(
                    icon: Icon(Icons.tv), iconSize: 25.0, onPressed: null),
                title: Text(
                  "الجدول التلفزيوني",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/transferCenter');
              },
              child: ListTile(
                leading: IconButton(
                    icon: Icon(Icons.loop), iconSize: 25.0, onPressed:null),
                title: Text(
                  "الانتقالات",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Divider(
              height: 2,
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    ListTile(
                      leading: IconButton(
                          icon: Icon(Icons.attach_money),
                          iconSize: 25.0,
                          onPressed: null),
                      title: Text(
                        "ازالة الاعلانات",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    ListTile(
                      leading: IconButton(
                          icon: Icon(Icons.brightness_4),
                          iconSize: 25.0,
                          onPressed: null),
                      title: Text(
                        "الوضع الليلي",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),

                    ),
                    ListTile(
                      leading: IconButton(
                          icon: Icon(Icons.settings),
                          iconSize: 25.0,
                          onPressed: null),
                      title: Text(
                        "الاعدادات",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );
  }
}
class MyModel {
  bool isSwitched = true;
  void doSomething() {
    isSwitched = false;
  }
}