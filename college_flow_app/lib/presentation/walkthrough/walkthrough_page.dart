import 'package:college_flow_app/presentation/walkthrough/walkthrough_first_page.dart';
import 'package:college_flow_app/presentation/walkthrough/walkthrough_second_page.dart';
import 'package:college_flow_app/presentation/walkthrough/walkthrough_third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({Key? key}) : super(key: key);

  @override
  WalkthroughPageState createState() => WalkthroughPageState();
}

class WalkthroughPageState extends State<WalkthroughPage> {
  final _pageViewController = PageController();

  void togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C61F4),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageViewController,
                children: const [
                  WalkthroughFirstPage(),
                  WalkthroughSecondPage(),
                  WalkthroughThirdPage(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: _pageViewController,
                    count: 3,
                    effect: const SwapEffect(
                      spacing: 8,
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: Color(0xff234EC3),
                      activeDotColor: Colors.white,
                    ),
                    onDotClicked: togglePage,
                  ),
                  IconButton(
                    onPressed: () {
                      if (_pageViewController.page == 2) {
                        return;
                      }
                      final page = (_pageViewController.page! + 1).toInt();
                      togglePage(page);
                    },
                    color: Colors.white,
                    icon: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
