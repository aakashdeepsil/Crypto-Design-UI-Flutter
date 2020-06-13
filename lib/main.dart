import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor:
            Color(0xFF181930), // BOTTOM NAVIGATION BAR BACKGROUND COLOR
        scaffoldBackgroundColor: Color(0xFF181930), // BACKGROUND COLOR
        fontFamily: 'Poppins', // FONT USED ACROSS THE UI
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      //INTRO STARTS HERE
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Welcome back, Alex!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xFF494D72),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Smart wallet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //INTRO ENDS HERE
                      //USER AVATAR STARTS HERE
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/angela.jpg'),
                      ),
                      //USER AVATAR ENDS HERE
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              //CRYPTO ACCOUNT DETAILS STARTS HERE
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF1E1F3B),
                        Color(0xFF262A4B),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //ETHEREUM LOGO STARTS HERE
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('images/eth.png'),
                            ),
                            //ETHEREUM LOGO ENDS HERE
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    text: '****  ****  ',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xFF494D72),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '3912',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'ACTIVE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white,
//                                      backgroundColor: Colors.lightBlue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Ethereum',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xFF494D72),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '5,021 ETH',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //DETAILS OF INVESTED AND RETURNS STARTS HERE
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF1E1F3B),
                              Color(0xFF262A4B),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.show_chart,
                                color: Color(0xFF8B92FB),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                'Invested',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xFF494D72),
                                ),
                              ),
                              Text(
                                r'$9,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF1E1F3B),
                              Color(0xFF262A4B),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.bookmark,
                                color: Color(0xFF8B92FB),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                'Return',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xFF494D72),
                                ),
                              ),
                              Text(
                                r'$1,400',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //DETAILS OF INVESTED AND RETURNS END HERE
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
        //BOTTOM NAVIGATION BAR END HERE
      ),
    );
  }
}
