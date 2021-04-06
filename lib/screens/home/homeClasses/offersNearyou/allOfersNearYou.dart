import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/models/offersModels.dart';

class AllOfersNearYou extends StatefulWidget {
  final String title;
  final String image;

  const AllOfersNearYou({Key key, @required this.title, @required this.image})
      : super(key: key);

  @override
  _AllOfersNearYouState createState() => _AllOfersNearYouState();
}

class _AllOfersNearYouState extends State<AllOfersNearYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        primary: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          ListTile(
            leading: CircleAvatar(
              maxRadius: 50,
              minRadius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(widget.image),
            ),
            title: Text(
              "${widget.title} Near you",
              style: AppTheme.subHeadingColorBlue,
            ),
          ),
          spaceH(20),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: listOffers.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                              color: customColorRed,
                            ),
                            child: Center(
                              child: Text(
                                'Save 10 LE',
                                style: AppTheme.heading.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listOffers[index].title,
                                    style: AppTheme.headingColorBlue,
                                  ),
                                  Text(
                                    listOffers[index].subTitle,
                                    style: AppTheme.subHeading,
                                  ),
                                  spaceH(10),
                                  Row(
                                    children: [
                                      Text(
                                        '${listOffers[index].oldPrice} EGP',
                                        style:
                                            AppTheme.headingColorBlue.copyWith(
                                          color: customColorGray,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      spaceW(10),
                                      Text(
                                        '${listOffers[index].newPrice} EGP',
                                        style: AppTheme.subHeadingColorBlue,
                                      ),
                                    ],
                                  ),
                                  spaceH(10),
                                  Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.motorcycle,
                                        color: Colors.yellow[900],
                                      ),
                                      spaceW(10),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          listOffers[index].delivery,
                                          style: AppTheme.subHeading.copyWith(
                                            color: customColorRed,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  spaceH(10),
                                  Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.motorcycle,
                                        color: Colors.yellow[900],
                                      ),
                                      spaceW(10),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          listOffers[index].points,
                                          style: AppTheme.subHeading.copyWith(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 200,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: customColor2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Add to Cart',
                                            style: AppTheme.heading.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          spaceW(10),
                                          Icon(
                                            FontAwesomeIcons.cartPlus,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  child: customCachedNetworkImage(
                                    context: context,
                                    url: listOffers[index].image,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
