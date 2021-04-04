import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/wrapper/wrapper.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class GitUserDate extends StatefulWidget {
  @override
  _GitUserDateState createState() => _GitUserDateState();
}

class _GitUserDateState extends State<GitUserDate> {
  int id;
  String _chossenDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Form(
        child: ListView(
          shrinkWrap: true,
          primary: true,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            spaceH(40),
            Text(
              'Thanks for signing up to KONSOLTO Please \n Complete your profile toknow you better',
              style: AppTheme.heading.copyWith(
                color: customColorGray,
                fontSize: 12,
              ),
            ),
            spaceH(20),
            TextFormField(
              decoration: textFormInputDecorationWithHint(
                hint: 'Type your name',
              ),
            ),
            spaceH(20),
            InkWell(
              onTap: () {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: new DateTime(1900),
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  },
                  onConfirm: (date) {
                    setState(() {
                      _chossenDate = "${date.year}-${date.month}-${date.day}";
                      // Age.resAge = _chossenDate;
                    });
                    print('confirm $date');
                  },
                  currentTime: DateTime.now(),
                );
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: customColorGray,
                    width: 1,
                  ),
                ),
                child: Text(
                  (_chossenDate) ?? 'Date of Birth',
                  style: AppTheme.heading.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            spaceH(20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Gender',
                    style: AppTheme.subHeading.copyWith(
                      color: customColorGray,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: RadioListTile(
                    activeColor: Colors.red,
                    title: Text(
                      'Male',
                      style: AppTheme.heading.copyWith(fontSize: 10),
                    ),
                    groupValue: id,
                    value: 1,
                    onChanged: (val) {
                      setState(() {
                        id = val;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: RadioListTile(
                    title: Text(
                      'Female',
                      style: AppTheme.heading.copyWith(fontSize: 10),
                    ),
                    groupValue: id,
                    value: 2,
                    onChanged: (val) {
                      setState(() {
                        id = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [],
            ),
            spaceH(20),
            TextFormField(
              decoration: textFormInputDecorationWithHint(
                hint: 'Referral Code',
              ),
            ),
            spaceH(40),
            Center(
              child: Text(
                'By cliking on submit you agree on Konsolto',
                style: AppTheme.heading.copyWith(
                  color: customColorGray,
                  fontSize: 12,
                ),
              ),
            ),
            spaceH(10),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Privacy Policy and Terms of use',
                  style: AppTheme.headingColorBlue.copyWith(
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            spaceH(20),
            Center(
              child: CustomButton(
                text: 'Submit',
                onPress: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (_) => Wrapper(),
                    ),
                    (routes) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
