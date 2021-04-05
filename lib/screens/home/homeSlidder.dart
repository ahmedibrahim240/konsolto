import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:konsolto/constants/constans.dart';

class HomeSlidder extends StatefulWidget {
  @override
  _HomeSlidderState createState() => _HomeSlidderState();
}

class _HomeSlidderState extends State<HomeSlidder> {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(height: 300, color: Colors.amber),
    Container(height: 300, color: Colors.black),
    Container(height: 300, color: Colors.blue),
    Container(height: 300, color: Colors.green),
    Container(height: 300, color: Colors.amber),
    Container(height: 300, color: Colors.black),
    Container(height: 300, color: Colors.blue),
    Container(height: 300, color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 2),
              autoPlay: true,
              aspectRatio: 2.0,
              onPageChanged: (int index, carouselPageChangedReason) {
                setState(() {
                  pageIndex = index;
                });
              },
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
            items: _demo
                .map(
                  (items) => GestureDetector(
                    onTap: () {},
                    child: items,
                  ),
                )
                .toList(),
          ),
          spaceH(20),
          CarouselIndicator(
            color: customColorRed.withOpacity(.5),
            cornerRadius: 15,
            height: 10,
            width: 10,
            activeColor: customColorRed,
            count: _demo.length,
            index: pageIndex,
          ),
        ],
      ),
    );
  }
}
