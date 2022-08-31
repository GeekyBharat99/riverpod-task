import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/base/switch_button_base.dart';
import 'package:shaale/widgets/buttons.dart';

class NewSwitchAndroidButton extends SwitchButtonBase {
  @override
  String className() {
    return "NewSwitchAndroidButton";
  }

  @override
  Widget render(BuildContext context, WidgetRef ref) {
    return const OutlineSwitchButtonWidget();
  }
}
