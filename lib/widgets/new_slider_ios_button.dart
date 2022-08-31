import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/base/slider_button_base.dart';
import 'package:shaale/widgets/buttons.dart';

class NewSliderIosButton extends SliderButtonBase {
  @override
  String className() {
    return "NewSliderIosButton";
  }

  @override
  Widget render(BuildContext context, WidgetRef ref) {
    return const CupertinoSliderButton();
  }
}
