import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/models/prescription.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  bool showPrescription = false;
  bool showLaboratory = false;
  bool scanRequest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'My health Time line',
          style: AppTheme.headingColorBlue,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        primary: true,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          CustomTimeLine(),
          CustomTimeLine(),
          CustomTimeLine(),
        ],
      ),
    );
  }
}

class PrscriptionsListview extends StatelessWidget {
  const PrscriptionsListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: listprescription.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: customColor,
                                ),
                              ),
                              spaceW(5),
                              Text(
                                listprescription[index].title,
                                style: AppTheme.headingColorBlue,
                              ),
                            ],
                          ),
                          Text(
                            listprescription[index].subTitle,
                            style: AppTheme.subHeading.copyWith(
                              color: customColorGold,
                              fontSize: 9,
                            ),
                          ),
                          Text(
                            listprescription[index].prince,
                            style: AppTheme.headingColorBlue,
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              listprescription[index].contant,
                              textAlign: TextAlign.center,
                              style: AppTheme.subHeading.copyWith(
                                fontSize: 9,
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
                            url: listprescription[index].image,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: customColorGreen2,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: customColorGreen2,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Add to Cart',
                                style: AppTheme.heading.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            spaceW(10),
                            Icon(
                              FontAwesomeIcons.cartPlus,
                              color: customColorGreen2,
                            ),
                          ],
                        ),
                      ),
                      spaceW(10),
                      Icon(
                        FontAwesomeIcons.shareAlt,
                        color: Colors.black,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomTimeLine extends StatefulWidget {
  @override
  _CustomTimeLineState createState() => _CustomTimeLineState();
}

class _CustomTimeLineState extends State<CustomTimeLine> {
  bool showPrescription = false;
  bool showLaboratory = false;
  bool scanRequest = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Colors.white),
          beforeLineStyle: LineStyle(color: Colors.white),
          lineXY: .3,
          isFirst: true,
          indicatorStyle: IndicatorStyle(
            width: 70,
            height: 70,
            indicator: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '24',
                    style: AppTheme.heading.copyWith(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Aug',
                    style: AppTheme.subHeading,
                  ),
                ],
              ),
            ),
            color: Colors.white,
          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 70,
            ),
            child: ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                minRadius: 30,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('lib/images/grand_pa.png'),
              ),
              title: Text(
                'Dr/Ahmed Ali',
                style: AppTheme.heading.copyWith(fontSize: 10),
              ),
              subtitle: Text(
                'Dr/Ahmed Ali Dr/Ahmed Ali Dr/Ahmed Ali',
                style: AppTheme.subHeading.copyWith(fontSize: 8),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: customColorRed,
                ),
              ),
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Colors.white),
          beforeLineStyle: LineStyle(color: Colors.white),
          lineXY: .3,
          indicatorStyle: IndicatorStyle(
            width: 70,
            height: 70,
            indicator: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('lib/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.white,
          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            child: Column(
              children: [
                cardListTile(
                  onTap: () {
                    setState(() {
                      showPrescription = !showPrescription;
                    });
                  },
                  icon: (showPrescription)
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  title: 'Prescription',
                  subTitle: 'by Dr/Ahmed Ali',
                ),
                (showPrescription == true)
                    ? PrscriptionsListview()
                    : Container(),
              ],
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Colors.white),
          beforeLineStyle: LineStyle(color: Colors.white),
          lineXY: .3,
          indicatorStyle: IndicatorStyle(
            width: 70,
            height: 70,
            indicator: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('lib/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.white,
          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            child: Column(
              children: [
                cardListTile(
                  onTap: () {
                    setState(() {
                      showLaboratory = !showLaboratory;
                    });
                  },
                  icon: (showLaboratory)
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  title: 'Laboratory Request',
                  subTitle: 'by Dr/Ahmed Ali',
                ),
                (showLaboratory == true) ? PrscriptionsListview() : Container(),
              ],
            ),
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Colors.white),
          beforeLineStyle: LineStyle(color: Colors.white),
          lineXY: .3,
          isLast: true,
          indicatorStyle: IndicatorStyle(
            width: 70,
            height: 70,
            indicator: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('lib/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Colors.white,
          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            child: Column(
              children: [
                cardListTile(
                  onTap: () {
                    setState(() {
                      scanRequest = !scanRequest;
                    });
                  },
                  icon: (scanRequest)
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  title: 'Scan Request',
                  subTitle: 'by Dr/Ahmed Ali',
                ),
                (scanRequest == true) ? PrscriptionsListview() : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  cardListTile({Function onTap, String title, String subTitle, IconData icon}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListTile(
          onTap: onTap,
          title: Text(
            title,
            style: AppTheme.heading.copyWith(fontSize: 10),
          ),
          subtitle: Text(
            subTitle,
            style: AppTheme.subHeading.copyWith(fontSize: 8),
          ),
          trailing: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
