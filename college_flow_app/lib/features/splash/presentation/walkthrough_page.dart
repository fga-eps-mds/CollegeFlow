import 'package:college_flow_app/config/constants/assets_contants.dart';
import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/splash/presentation/widgets/walkthrough_base_page.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
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
                      key: ValueKey('OnboardingFirstStep'),
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
                      isFinalPage: true,
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
                      count: 2,
                      effect: const SwapEffect(
                        spacing: spacingXXXS,
                        dotHeight: spacingNano,
                        dotWidth: spacingNano,
                        dotColor: colorDarkPrimary,
                        activeDotColor: colorWhite,
                      ),
                      onDotClicked: _togglePage,
                    ),
                    FlowIconButton(
                      key: const ValueKey('skipOnboardingButton'),
                      icon: const FlowIcon.arrowRight(),
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          FlowRoutes.subjectsList,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //TO DO (Luan): Configurar a navegação pela arrow. Avançar as páginas e quando chegar na última
  //ir para a tela de list_subjects_page
  void _togglePage(int page) {
    _pageViewController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
