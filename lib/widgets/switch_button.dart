import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/widgets/buttons.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({
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
            return const OutlineSwitchButtonWidget();

          case Platforms.ios:
            return const CupertinoSwicthButtonWidget();

          case Platforms.mac:
            return const CupertinoSwicthButtonWidget();

          case Platforms.linux:
            return const OutlineSwitchButtonWidget();

          default:
            return Container();
        }
      },
    );
  }
}
