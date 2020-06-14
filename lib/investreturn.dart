import 'package:flutter/material.dart';
import 'package:internshipassignment/size_config.dart';

class InvestReturn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(1.76 * SizeConfig.heightMultiplier),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF1E1F3B),
                    Color(0xFF262A4B),
                  ],
                ),
                borderRadius:
                    BorderRadius.circular(1.17 * SizeConfig.heightMultiplier),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.11 * SizeConfig.heightMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.show_chart,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                      color: Color(0xFF8B92FB),
                    ),
                    FittedBox(
                      child: Text(
                        'Invested',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 2.35 * SizeConfig.textMultiplier,
                          color: Color(0xFF494D72),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        r'$9,000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 3.52 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(1.76 * SizeConfig.heightMultiplier),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF1E1F3B),
                    Color(0xFF262A4B),
                  ],
                ),
                borderRadius:
                    BorderRadius.circular(1.17 * SizeConfig.heightMultiplier),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.11 * SizeConfig.heightMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.bookmark,
                      size: 5 * SizeConfig.imageSizeMultiplier,
                      color: Color(0xFF8B92FB),
                    ),
                    FittedBox(
                      child: Text(
                        'Return',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 2.35 * SizeConfig.textMultiplier,
                          color: Color(0xFF494D72),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        r'$1,400',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 3.52 * SizeConfig.textMultiplier,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
