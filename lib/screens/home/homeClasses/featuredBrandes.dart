import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';

class FeaturedBrandes extends StatefulWidget {
  @override
  _FeaturedBrandesState createState() => _FeaturedBrandesState();
}

class _FeaturedBrandesState extends State<FeaturedBrandes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Brandes',
            style: AppTheme.headingColorBlue,
          ),
          GridView.count(
            crossAxisCount: 3,
            primary: false,
            childAspectRatio: .9,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            shrinkWrap: true,
            children: List.generate(
              9,
              (index) {
                return InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (_) => CategoriesCoursesPage(
                    //       categories: categoriesList[index],
                    //     ),
                    //   ),
                    // );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: customColorGray,
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
