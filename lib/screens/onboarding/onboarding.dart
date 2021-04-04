import 'package:flutter/material.dart';
import 'package:konsolto/constants/constans.dart';
import 'package:konsolto/constants/themes.dart';
import 'package:konsolto/screens/authenticate/authenticate.dart';
import 'package:konsolto/screens/onboarding/slider.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if (User.userLogIn == true) {
    //   return Authenticate();
    // } else {
    return OnBoarding();
    // }
  }
}

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();
  List<Widget> _pages = [
    CustomSlider(
      contant: 'Order medicine for you and your family in hassle free way ',
      image: 'lib/images/img1.png',
    ),
    CustomSlider(
      contant:
          'Srearch ... Scan ...Type products You like to order from pharmacies',
      image: 'lib/images/img2.png',
    ),
    CustomSlider(
      contant:
          'Track your order status easliy and connect with pharmacy when you like',
      image: 'lib/images/img3.png',
    ),
    CustomSlider(
      contant: 'Rate pharmasies to Keep Excellent pharmacies in our Network',
      image: 'lib/images/img4.png',
    ),
  ];
  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  itemCount: _pages.length,
                  onPageChanged: _onChanged,
                  itemBuilder: (context, int index) {
                    return _pages[index];
                  },
                ),
              ),
              SliderContoler(
                pages: _pages,
                currentPage: _currentPage,
                controller: _controller,
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => Authenticate(),
                  ),
                  (routes) => false,
                );
              },
              child: Container(
                height: 35,
                width: 86,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (_currentPage == (_pages.length - 1))
                        ? Container()
                        : Text(
                            'Skip',
                            style:
                                AppTheme.heading.copyWith(color: customColor),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SliderContoler extends StatelessWidget {
  const SliderContoler({
    Key key,
    @required List<Widget> pages,
    @required int currentPage,
    @required PageController controller,
  })  : _pages = pages,
        _currentPage = currentPage,
        _controller = controller,
        super(key: key);

  final List<Widget> _pages;
  final int _currentPage;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffff1f1f1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              _pages.length,
              (int index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 15,
                  width: (index == _currentPage) ? 15 : 15,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (index == _currentPage)
                        ? customColor
                        : customColor.withOpacity(0.5),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    if (_currentPage == (_pages.length - 1)) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Authenticate(),
                        ),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.easeInOutQuint,
                      );
                    }
                  },
                  child: Container(
                    height: 35,
                    width: 86,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (_currentPage == (_pages.length - 1))
                              ? 'Start'
                              : 'Next',
                          style: AppTheme.heading.copyWith(color: customColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
