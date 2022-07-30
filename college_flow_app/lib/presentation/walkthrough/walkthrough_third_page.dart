import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalkthroughThirdPage extends StatelessWidget {
  const WalkthroughThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const walkthrough03 = 'assets/walkthrough_03.svg';

    return Container(
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
    );
  }
}
