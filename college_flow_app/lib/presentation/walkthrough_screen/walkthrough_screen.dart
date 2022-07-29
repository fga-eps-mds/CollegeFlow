import 'package:college_flow_app/config/constants/assets_contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({Key? key}) : super(key: key);

  @override
  WalkthroughScreenState createState() => WalkthroughScreenState();
}

class WalkthroughScreenState extends State<WalkthroughScreen> {
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
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 64,
                        horizontal: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Disciplinas',
                            style: TextStyle(
                              fontFamily: 'OctinCollege',
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Descubra tudo sobre as disciplinas que está cursando e ainda vai cursar!',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 64),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 312,
                              height: 312,
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 310,
                                    height: 310,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff6B90F7),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SvgPicture.asset(walkthrough01),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 64,
                        horizontal: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Avaliações',
                            style: TextStyle(
                              fontFamily: 'OctinCollege',
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Saiba o que os alunos estão achando de outras disciplinas em tempo real!',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 64),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 312,
                              height: 312,
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 310,
                                    height: 310,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff6B90F7),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SvgPicture.asset(walkthrough02),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 64,
                        horizontal: 35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ranking',
                            style: TextStyle(
                              fontFamily: 'OctinCollege',
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Veja quais são as melhores disciplinas de acordo com as notas dadas pelos alunos que cursaram!',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 64),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 312,
                              height: 312,
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 310,
                                    height: 310,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff6B90F7),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SvgPicture.asset(walkthrough03),
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
      ),
    );
  }
}
