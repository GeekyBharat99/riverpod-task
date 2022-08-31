import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/base/slider_and_switch_base.dart';
import 'package:shaale/widgets/slider_and_switch.dart';

class NewSliderAndSwitchIos extends SliderAndSwitchBase {
  @override
  String className() {
    return "NewSliderAndSwitchIos";
  }

  @override
  Widget render(BuildContext context, WidgetRef ref) {
    return const SliderAndSwitchIOS();
  }
}
