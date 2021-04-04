import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';

class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[400].withOpacity(.6),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox(width: 5),
                    Text(
                      "Tessssssssssssssssssssssssssst",
                      style: AppTheme.headingColorBlue,
                    ),
                  ],
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: customColor2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search),
                SizedBox(width: 5),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "What are you looking for in pharmacy",
                      hintStyle:
                          AppTheme.subHeadingColorBlue.copyWith(fontSize: 15),
                      contentPadding: EdgeInsets.only(top: 5),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
