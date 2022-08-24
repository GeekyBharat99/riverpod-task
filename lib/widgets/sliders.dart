import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';

class AndroidSlider extends StatelessWidget {
  const AndroidSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final double slider = ref
            .watch(sliderProvider.state)
            .state; // Get the slider value form sliderProvider.

        return Slider(
          min: 0,
          max: 100,
          value: slider,
          onChanged: (value) {
            ref.read(sliderProvider.state).state =
                value; // Change the state of sliderProvider.
          },
        );
      },
    );
  }
}

class IosSlider extends StatelessWidget {
  const IosSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final double slider = ref
            .watch(sliderProvider.state)
            .state; // Get the slider value form sliderProvider.
        return CupertinoSlider(
          min: 0,
          max: 100,
          value: slider,
          onChanged: (value) {
            ref.read(sliderProvider.state).state =
                value; // Change the state of sliderProvider.
          },
        );
      },
    );
  }
}
