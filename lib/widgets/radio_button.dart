import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool isIos = ref
            .watch(isIosProvider.state)
            .state; // Get the isIos value form isIosProvider.
        final String radioValue = ref
            .watch(selectedRadioItemProvider.state)
            .state; // Get the radioValue value form selectedRadioItemProvider.

        if (isIos) {
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
        } else {
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
        }
      },
    );
  }
}
