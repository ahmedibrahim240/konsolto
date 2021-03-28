import 'package:flutter/material.dart';
import 'package:konsolto/constants/themes.dart';

class CustomSlider extends StatelessWidget {
  final String title, contant;
  final String image;
  final String backImage;
  CustomSlider({this.backImage, this.contant, this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  contant,
                  textAlign: TextAlign.center,
                  style: AppTheme.headingColorBlue.copyWith(
                    height: 1.5,
                    letterSpacing: .07,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
