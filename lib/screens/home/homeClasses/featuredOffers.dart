import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/models/featuredOfferModels.dart';

class Featuredoffers extends StatefulWidget {
  @override
  _FeaturedoffersState createState() => _FeaturedoffersState();
}

class _FeaturedoffersState extends State<Featuredoffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Featured offer',
            style: AppTheme.headingColorBlue.copyWith(
              fontSize: 16,
              color: customColorRed,
            ),
          ),
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listFeaturedOffer.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: customColorRed,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Save 10 EGP',
                              style: AppTheme.heading.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        spaceH(10),
                        Center(
                          child: Container(
                            height: 170,
                            width: 150,
                            child: customCachedNetworkImage(
                              context: context,
                              url: listFeaturedOffer[index].image,
                            ),
                          ),
                        ),
                        spaceH(10),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                listFeaturedOffer[index].title,
                                style: AppTheme.headingColorBlue,
                              ),
                              Row(
                                children: [
                                  Text(
                                    listFeaturedOffer[index].oldPrice,
                                    style: AppTheme.headingColorBlue.copyWith(
                                      color: customColorGray,
                                    ),
                                  ),
                                  spaceW(10),
                                  Text(
                                    listFeaturedOffer[index].newPrice,
                                    style: AppTheme.headingColorBlue,
                                  ),
                                ],
                              ),
                              Text(
                                listFeaturedOffer[index].pharmacyName,
                                style: AppTheme.headingColorBlue.copyWith(
                                  color: customColorRed,
                                ),
                              ),
                            ],
                          ),
                        ),
                        spaceH(10),
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: customColorGreen,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add to Cart',
                                    style: AppTheme.heading.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.cartPlus,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
