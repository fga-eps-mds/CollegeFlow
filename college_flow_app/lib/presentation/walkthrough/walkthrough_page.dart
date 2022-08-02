import 'package:college_flow_app/config/constants/assets_contants.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/login/login_pages.dart';
import 'package:college_flow_app/presentation/walkthrough/widgets/walkthrough_base_page.dart';
import 'package:college_flow_app/presentation/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughPage extends StatefulWidget {
  const WalkthroughPage({Key? key}) : super(key: key);

  @override
  WalkthroughPageState createState() => WalkthroughPageState();
}

class WalkthroughPageState extends State<WalkthroughPage> {
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C61F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: spacingXXXS,
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  children: const [
                    WalkthroughBasePage(
                      title: "Disciplinas",
                      description:
                          "Descubra tudo sobre as disciplinas que está cursando e ainda vai cursar!",
                      imgPath: walkthrough01,
                    ),
                    WalkthroughBasePage(
                      title: "Avaliações",
                      description:
                          "Saiba o que os alunos estão achando de outras disciplinas em tempo real!",
                      imgPath: walkthrough02,
                    ),
                    WalkthroughBasePage(
                      title: "Ranking",
                      description:
                          "Veja quais são as melhores disciplinas de acordo com as notas dadas pelos alunos que cursaram!",
                      imgPath: walkthrough03,
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _pageViewController,
                count: 3,
                effect: const SwapEffect(
                  spacing: spacingXXXS,
                  dotHeight: spacingNano,
                  dotWidth: spacingNano,
                  dotColor: Color(0xff234EC3),
                  activeDotColor: Colors.white,
                ),
                onDotClicked: togglePage,
              ),
              const VSpacer.xxxs(),
              FlowButton(
                label: "Vamos Começar",
                //TODO(Mauricio-Machado): When user clicks redirect to login page
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
