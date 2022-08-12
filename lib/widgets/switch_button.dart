import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool isIos = ref
            .watch(isIosProvider.state)
            .state; // Get the isIos value form isIosProvider.
        final bool switchValue = ref
            .watch(switchProvider.state)
            .state; // Get the switchValue from switchProvider.

        if (isIos) {
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
        } else {
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
        }
      },
    );
  }
}
