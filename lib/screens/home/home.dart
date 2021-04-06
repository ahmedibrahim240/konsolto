import 'package:flutter/material.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/screens/home/homeClasses/featuredBrandes.dart';
import 'package:konsolto/screens/home/homeClasses/seaconalSelection.dart';
import 'package:konsolto/screens/home/homeClasses/tapToSeeOffers.dart';
import 'package:konsolto/screens/home/homeSlidder.dart';

import 'homeClasses/featuredOffers.dart';
import 'homeClasses/homeAppBar.dart';
import 'homeClasses/homePaner.dart';
import 'homeClasses/offersNearyou/offertsNears.dart';
import 'homeClasses/pharmacyCategories.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        shrinkWrap: true,
        primary: true,
        children: [
          HomeAppBar(),
          TapToSeeOffers(),
          HomePaner(),
          OffersNearYou(),
          PharmacyCategaorises(),
          HomeSlidder(),
          Featuredoffers(),
          SeaconalSelection(),
          FeaturedBrandes(),
        ],
      ),
    );
  }
}
