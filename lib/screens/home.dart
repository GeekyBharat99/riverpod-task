import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/base/android_widgets.dart';
import 'package:shaale/base/ios_widgets.dart';
import 'package:shaale/base/widget_type_base.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/constants/strings.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/widgets/platform_toggle.dart';
import 'package:shaale/widgets/radio_button_group.dart';

class HomePage extends ConsumerWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<WidgetTypeBase> types = [
    AndroidWidgets(),
    IosWidgets(),
    AndroidWidgets(),
    IosWidgets(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platform = ref.watch(platformProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.flutterWidgetTest),
        actions: const [
          // A drop down to choose platform, be default android.
          PlatformDropDown(),
        ],
      ),
      body: ListView(
        children: [
          addVerticalSpace(36),
          types[Platforms.values.indexOf(platform)]
              .renderSliderAndSwitch()
              .render(context, ref),
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
              types[Platforms.values.indexOf(platform)]
                  .renderSliderButton()
                  .render(context, ref),
              addVerticalSpace(16),
              types[Platforms.values.indexOf(platform)]
                  .renderSwitchButton()
                  .render(context, ref),
              addVerticalSpace(16),
              types[Platforms.values.indexOf(platform)]
                  .renderRadioButton()
                  .render(context, ref),
              addVerticalSpace(16),
            ],
          ),
        ],
      ),
    );
  }
}
