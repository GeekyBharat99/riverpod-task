import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool isIos = ref
            .watch(isIosProvider.state)
            .state; // Get the isIos value form isIosProvider.
        final double sliderValue = ref
            .watch(sliderProvider.state)
            .state; // Get the sliderValue value form sliderProvider.

        if (isIos) {
          return CupertinoButton.filled(
            child: const Text(
              AppStrings.sliderButton,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              // Shows a Cupertino Dialog with the sliderValue in it.
              showIosDialog(
                title: AppStrings.sliderValue,
                content:
                    AppStrings.sliderValueIs + sliderValue.toStringAsFixed(2),
                context: context,
              );
            },
          );
        } else {
          return TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            onPressed: () {
              // Shows a Material Dialog with the sliderValue in it.
              showAndroidDialog(
                title: AppStrings.sliderValue,
                content:
                    AppStrings.sliderValueIs + sliderValue.toStringAsFixed(2),
                context: context,
              );
            },
            child: const Text(
              AppStrings.sliderButton,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        }
      },
    );
  }
}
