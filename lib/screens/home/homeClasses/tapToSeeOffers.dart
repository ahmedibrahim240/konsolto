import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';

class TapToSeeOffers extends StatefulWidget {
  @override
  _TapToSeeOffersState createState() => _TapToSeeOffersState();
}

class _TapToSeeOffersState extends State<TapToSeeOffers> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMyOfferDialog(
          context: context,
          image: 'https://cdn-b.medlife.com/blog/Super-Deals-1.jpg',
        );
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: customCachedNetworkImage(
                context: context,
                url: 'https://cdn-b.medlife.com/blog/Super-Deals-1.jpg',
              ),
            ),
            spaceW(10),
            Expanded(
              child: Text(
                'Tap to see offers near you',
                style: AppTheme.heading.copyWith(
                  color: customColorRed,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showMyOfferDialog({BuildContext context, String image}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.cancel,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  ListBody(
                    children: <Widget>[
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          child: customCachedNetworkImage(
                              context: context, url: image),
                        ),
                      ),
                      Text(
                        'Turn on Location to check\n all neardy offers ',
                        textAlign: TextAlign.center,
                        style: AppTheme.heading.copyWith(
                          color: customColorRed,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Turn On',
                style: AppTheme.heading.copyWith(
                  color: customColor,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
