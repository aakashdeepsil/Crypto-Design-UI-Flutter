import 'package:flutter/material.dart';
import 'package:internshipassignment/size_config.dart';
import 'header.dart';
import 'account.dart';
import 'investreturn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                canvasColor: Color(0xFF181930),
                scaffoldBackgroundColor: Color(0xFF181930),
                fontFamily: 'Poppins',
              ),
              home: MyHomePage(),
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //PART 1 INFO AND AVATAR
              Header(),
              //CRYPTO ACCOUNT DETAILS STARTS HERE
              AccountDetails(),
              //DETAILS OF INVESTED AND RETURNS STARTS HERE
              InvestReturn(),
            ],
          ),
        ),
        //BOTTOM NAVIGATION BAR STARTS HERE
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Color(0xFF494D72),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              title: new Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
