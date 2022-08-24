import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';
import 'package:shaale/widgets/sliders.dart';
import 'package:shaale/widgets/switches.dart';

class SliderAndSwitch extends StatelessWidget {
  const SliderAndSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const Text(
                AppStrings.slider,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final platform = ref
                      .watch(platformProvider.state)
                      .state; // Get the platform value form platformProvider.

                  switch (platform) {
                    case Platforms.android:
                      return const AndroidSlider();

                    case Platforms.ios:
                      return const IosSlider();

                    case Platforms.mac:
                      return const IosSlider();

                    case Platforms.linux:
                      return const AndroidSlider();

                    default:
                      return Container();
                  }
                },
              ),
            ],
          ),
        ),
        addHorizontalSpace(16),
        Expanded(
          child: Column(
            children: [
              const Text(
                AppStrings.switchStr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final platform = ref
                      .watch(platformProvider.state)
                      .state; // Get the platform value form platformProvider.

                  switch (platform) {
                    case Platforms.android:
                      return const AndroidSwitch();

                    case Platforms.ios:
                      return const IosSwitch();

                    case Platforms.mac:
                      return const IosSwitch();

                    case Platforms.linux:
                      return const AndroidSwitch();

                    default:
                      return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
