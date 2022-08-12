import 'package:flutter/material.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/constants/strings.dart';
import 'package:shaale/widgets/android_or_ios_toggle.dart';
import 'package:shaale/widgets/radio_button.dart';
import 'package:shaale/widgets/radio_button_group.dart';
import 'package:shaale/widgets/slider_and_switch.dart';
import 'package:shaale/widgets/slider_button.dart';
import 'package:shaale/widgets/switch_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.flutterWidgetTest),
        actions: const [
          // AndroidOrIosToggle contains a Switch widget, which is used to toggle between platform widgets (Android or IOS) .
          AndroidOrIosToggle(),
        ],
      ),
      body: ListView(
        children: [
          addVerticalSpace(36),
          const SliderAndSwitch(),
          addVerticalSpace(36),
          Column(
            children: [
              RadioButtonGroup(),
              addVerticalSpace(36),
              const Text(
                "Dialogs",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              addVerticalSpace(16),
              const SliderButton(),
              addVerticalSpace(16),
              const SwitchButton(),
              addVerticalSpace(16),
              const RadioButton(),
              addVerticalSpace(16),
            ],
          ),
        ],
      ),
    );
  }
}
