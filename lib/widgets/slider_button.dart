import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/widgets/buttons.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final platform = ref
            .watch(platformProvider.state)
            .state; // Get the platform value form platformProvider.

        switch (platform) {
          case Platforms.android:
            return const TextSliderButton();

          case Platforms.ios:
            return const CupertinoSliderButton();

          case Platforms.mac:
            return const CupertinoSliderButton();

          case Platforms.linux:
            return const TextSliderButton();

          default:
            return Container();
        }
      },
    );
  }
}
