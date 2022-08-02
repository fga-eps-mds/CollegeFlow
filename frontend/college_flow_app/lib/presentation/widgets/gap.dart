import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VSpacer extends StatelessWidget {
  final double size;

  const VSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  ///Height `4px`
  const VSpacer.quarck({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `8px`
  const VSpacer.nano({Key? key})
      : size = spacingNano,
        super(key: key);

  ///Height `16px`
  const VSpacer.xxxs({Key? key})
      : size = spacingXXXS,
        super(key: key);

  ///Height `24px`
  const VSpacer.xxs({Key? key})
      : size = spacingXXS,
        super(key: key);

  ///Height `32px`
  const VSpacer.xs({Key? key})
      : size = spacingXS,
        super(key: key);

  ///Height `40px`
  const VSpacer.sm({Key? key})
      : size = spacingSM,
        super(key: key);

  ///Height `64px`
  const VSpacer.lg({Key? key})
      : size = spacingLG,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}

class HSpacer extends StatelessWidget {
  final double size;

  const HSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  ///Height `4px`
  const HSpacer.quarck({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `8px`
  const HSpacer.nano({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `16px`
  const HSpacer.xxxs({Key? key})
      : size = spacingQuarck,
        super(key: key);

  ///Height `24px`
  const HSpacer.xxs({Key? key})
      : size = spacingQuarck,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
