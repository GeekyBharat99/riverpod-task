import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';

class PlatformDropDown extends StatelessWidget {
  const PlatformDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final platform = ref.watch(platformProvider.state).state;
        return DropdownButton<Platforms>(
          underline: Container(),
          iconEnabledColor: Colors.white,
          dropdownColor: Colors.purple,
          focusColor: Colors.white,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          value: platform,
          onChanged: (value) => ref.read(platformProvider.state).state = value,
          items: Platforms.values.map(
            (Platforms platform) {
              return DropdownMenuItem<Platforms>(
                value: platform,
                child: Text(
                  platform.name,
                ),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
