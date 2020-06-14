import 'package:flutter/material.dart';
import 'package:internshipassignment/size_config.dart';

class AccountDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //ETHEREUM LOGO STARTS HERE
                  CircleAvatar(
                    radius: 8 * SizeConfig.imageSizeMultiplier,
                    backgroundImage: AssetImage('images/eth.png'),
                  ),
                  //ETHEREUM LOGO ENDS HERE
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FittedBox(
                        child: RichText(
                          text: TextSpan(
                            text: '****  ****  ',
                            style: TextStyle(
                              fontSize: 2.94 * SizeConfig.textMultiplier,
                              color: Color(0xFF494D72),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '3912',
                                style: TextStyle(
                                  fontSize: 2.35 * SizeConfig.textMultiplier,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(
                              1.17 * SizeConfig.heightMultiplier),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                          child: FittedBox(
                            child: Text(
                              'ACTIVE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 1.76 * SizeConfig.textMultiplier,
                                color: Colors.white,
//                                      backgroundColor: Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  'Ethereum',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 2.35 * SizeConfig.textMultiplier,
                    color: Color(0xFF494D72),
                  ),
                ),
              ),
              FittedBox(
                child: Text(
                  '5,021 ETH',
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
    );
  }
}
