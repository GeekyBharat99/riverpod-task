import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';

class AndroidOrIosToggle extends StatelessWidget {
  const AndroidOrIosToggle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool isIos = ref
            .watch(isIosProvider.state)
            .state; // Get the isIos value form isIosProvider.
        return Switch(
          value: isIos,
          activeColor: Colors.white,
          onChanged: (value) => ref.read(isIosProvider.state).state =
              value, // Change the state of isIosProvider.
        );
      },
    );
  }
}
