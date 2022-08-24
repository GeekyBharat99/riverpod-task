import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/constants/strings.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';

class OutlineSwitchButtonWidget extends StatelessWidget {
  const OutlineSwitchButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool switchValue = ref
            .watch(switchProvider.state)
            .state; // Get the switchValue from switchProvider.

        return OutlinedButton(
          onPressed: () {
            // Shows a Material Dialog with the switchValue in it.
            showAndroidDialog(
              title: AppStrings.switchValue,
              content: AppStrings.switchValueIs + switchValue.toString(),
              context: context,
            );
          },
          child: const Text(AppStrings.switchButton),
        );
      },
    );
  }
}

class CupertinoSwicthButtonWidget extends StatelessWidget {
  const CupertinoSwicthButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool switchValue = ref
            .watch(switchProvider.state)
            .state; // Get the switchValue from switchProvider.

        return CupertinoButton.filled(
          child: const Text(
            AppStrings.switchButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            // Shows a Cupertino Dialog with the switchValue in it.
            showIosDialog(
              title: AppStrings.switchValue,
              content: AppStrings.switchValueIs + switchValue.toString(),
              context: context,
            );
          },
        );
      },
    );
  }
}

class CupertinoSliderButton extends StatelessWidget {
  const CupertinoSliderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final double sliderValue = ref
            .watch(sliderProvider.state)
            .state; // Get the sliderValue value form sliderProvider.

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
      },
    );
  }
}

class TextSliderButton extends StatelessWidget {
  const TextSliderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final double sliderValue = ref
            .watch(sliderProvider.state)
            .state; // Get the sliderValue value form sliderProvider.

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
      },
    );
  }
}

class AndroidRadioButton extends StatelessWidget {
  const AndroidRadioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final String radioValue = ref
            .watch(selectedRadioItemProvider.state)
            .state; // Get the radioValue value form selectedRadioItemProvider.

        return ElevatedButton(
          onPressed: () {
            // Shows a Material Dialog with the radioValue in it.
            showAndroidDialog(
              title: AppStrings.radioValue,
              content: AppStrings.radioValueIs + radioValue,
              context: context,
            );
          },
          child: const Text(
            AppStrings.radioButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

class IosRadioButton extends StatelessWidget {
  const IosRadioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final String radioValue = ref
            .watch(selectedRadioItemProvider.state)
            .state; // Get the radioValue value form selectedRadioItemProvider.

        return CupertinoButton.filled(
          child: const Text(
            AppStrings.radioButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            // Shows a Cupertino Dialog with the radioValue in it.
            showIosDialog(
              title: AppStrings.radioValue,
              content: AppStrings.radioValueIs + radioValue,
              context: context,
            );
          },
        );
      },
    );
  }
}
