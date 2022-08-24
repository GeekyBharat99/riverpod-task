import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';

class AndroidSwitch extends StatelessWidget {
  const AndroidSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool switchValue = ref
            .watch(switchProvider.state)
            .state; // Get the switchValue value form switchProvider.
        return Switch(
          value: switchValue,
          activeColor: Colors.purple,
          onChanged: (value) => ref.read(switchProvider.state).state =
              value, // Change the state of switchProvider.
        );
      },
    );
  }
}

class IosSwitch extends StatelessWidget {
  const IosSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final bool switchValue = ref
            .watch(switchProvider.state)
            .state; // Get the switchValue value form switchProvider.
        return CupertinoSwitch(
          value: switchValue,
          onChanged: (value) => ref.read(switchProvider.state).state =
              value, // Change the state of switchProvider.
          activeColor: Colors.purple,
        );
      },
    );
  }
}
