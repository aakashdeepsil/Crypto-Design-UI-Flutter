import 'package:flutter/material.dart';
import 'package:internshipassignment/size_config.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(1.76 * SizeConfig.heightMultiplier),
        child: Row(
          children: <Widget>[
            //INTRO STARTS HERE
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FittedBox(
                      child: Text(
                        "Welcome back, Alex!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF494D72),
                          fontSize: 2.11 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        "Smart wallet",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 3.52 * SizeConfig.textMultiplier,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //INTRO ENDS HERE
            //USER AVATAR STARTS HERE
            CircleAvatar(
              radius: 10 * SizeConfig.imageSizeMultiplier,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/angela.jpg'),
            ),
            //USER AVATAR ENDS HERE
          ],
        ),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(1.17 * SizeConfig.heightMultiplier),
        ),
      ),
    );
  }
}
