import 'package:course_app/utilities/custom_page_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'main_page.dart';

class IntroPage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 18, color: Color(0xFF2B31BA), fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        globalBackgroundColor: Colors.white,
        done: Text('Done', style: textStyle),
        onDone: () => Navigator.of(context).pushReplacement(CustomPageRoute(child: MainPage())),
        pages: getListPagesViewModel(),
        next: Text('Next', style: textStyle),
        onSkip: () => Navigator.of(context).pushReplacement(CustomPageRoute(child: MainPage())),
        showNextButton: true,
        showSkipButton: true,
        curve: Curves.bounceOut,
        skip: Text('Skip', style: textStyle),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(18.0, 10.0),
            activeColor: Color(0xFF989BD7),
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )));
  }

  List<PageViewModel> getListPagesViewModel() {
    var pageDecoration = PageDecoration(
        boxDecoration: BoxDecoration(color: Colors.white),
        bodyTextStyle: TextStyle(color: Colors.black, fontSize: 16),
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black));
    return [
      PageViewModel(
          image: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              'assets/images/Group2.png',
              height: 250,
            ),
          )),
          decoration: pageDecoration,
          title: 'Got an idea?',
          body: 'But you don\'t know how to implement it on your own?'),
      PageViewModel(
          title: 'We got you covered !',
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
                'assets/images/Group11.png',
                height: 250,
              ),
            ),
          ),
          body: 'You can start learning different skills from different courses',
          decoration: pageDecoration),
      PageViewModel(
          image: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
                'assets/images/Group12.png',
                height: 250,
              ),
            ),
          ),
          title: 'Start using the app now',
          body: 'So your dream project comes true !',
          decoration: pageDecoration),
    ];
  }
}
