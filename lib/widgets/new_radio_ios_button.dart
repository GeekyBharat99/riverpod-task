import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/base/radio_button_base.dart';
import 'package:shaale/widgets/buttons.dart';

class NewRadioIosButton extends RadioButtonBase {
  @override
  String className() {
    return "NewRadioIosButton";
  }

  @override
  Widget render(BuildContext context, WidgetRef ref) {
    return const IosRadioButton();
  }
}
