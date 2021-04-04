import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/screens/home/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Text('page2'),
    Text('page3'),
    Text('page4'),

    // Home(),
    // Archives(),
    // Blog(),
    // Courses(),
    // More(),
  ];
  // getTotalPrice() async {
  //   Cart.totalPraices = await MySharedPreferences.getTotalPrice();
  // }

  // @override
  // void initState() {
  //   getTotalPrice();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       // Navigator.of(context).push(
      //       //   MaterialPageRoute(
      //       //     builder: (_) => AddBusinessGuide(),
      //       //   ),
      //       // );
      //     },
      //     child: Icon(Icons.camera),
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        title: Text(
          'KONSOLTO',
          style: AppTheme.headingColorBlue,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xfffF1F1F1),
        selectedItemColor: customColor,
        unselectedItemColor: customColorGray,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: AppTheme.headingColorBlue,
        unselectedLabelStyle: AppTheme.subHeadingColorBlue,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Pharmcy',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Pharmcist',
            icon: Icon(FontAwesomeIcons.solidComments),
          ),
          // BottomNavigationBarItem(
          //   label: 'Pharmcist',
          //   icon: Icon(Icons.camera),
          // ),
          BottomNavigationBarItem(
            label: 'Timeline',
            icon: Icon(Icons.timeline),
          ),
          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
