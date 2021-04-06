import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/screens/home/homeClasses/offersNearyou/allOfersNearYou.dart';

class OffersNearYou extends StatefulWidget {
  @override
  _OffersNearYouState createState() => _OffersNearYouState();
}

class _OffersNearYouState extends State<OffersNearYou> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Offers Near You',
            style: AppTheme.headingColorBlue.copyWith(
              fontSize: 16,
            ),
          ),
          spaceH(10),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              primary: false,
              childAspectRatio: 1,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => AllOfersNearYou(
                              title: 'Ezaby offers Near you',
                              image: 'lib/images/logo.png',
                            ),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: CircleAvatar(
                            maxRadius: 50,
                            minRadius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('lib/images/logo.png'),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
