import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';

class HomePaner extends StatefulWidget {
  @override
  _HomePanerState createState() => _HomePanerState();
}

class _HomePanerState extends State<HomePaner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 20,
                        maxRadius: 20,
                        backgroundImage: AssetImage('lib/images/logo.png'),
                        backgroundColor: Colors.white,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr.Ahmed Ail',
                            style: AppTheme.heading.copyWith(fontSize: 10),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              'tesssssssssssssssst',
                              style: AppTheme.subHeading.copyWith(fontSize: 7),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Q 18",
                          style: AppTheme.heading.copyWith(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              'tesssssssssssssssssst',
                              style: AppTheme.subHeadingColorBlue.copyWith(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
