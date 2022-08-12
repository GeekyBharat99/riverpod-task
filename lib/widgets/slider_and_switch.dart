import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';

class SliderAndSwitch extends StatelessWidget {
  const SliderAndSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const Text(
                AppStrings.slider,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final bool isIos = ref
                      .watch(isIosProvider.state)
                      .state; // Get the isIos value form isIosProvider.
                  final double slider = ref
                      .watch(sliderProvider.state)
                      .state; // Get the slider value form sliderProvider.

                  if (isIos) {
                    return CupertinoSlider(
                      min: 0,
                      max: 100,
                      value: slider,
                      onChanged: (value) {
                        ref.read(sliderProvider.state).state =
                            value; // Change the state of sliderProvider.
                      },
                    );
                  } else {
                    return Slider(
                      min: 0,
                      max: 100,
                      value: slider,
                      onChanged: (value) {
                        ref.read(sliderProvider.state).state =
                            value; // Change the state of sliderProvider.
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
        addHorizontalSpace(16),
        Expanded(
          child: Column(
            children: [
              const Text(
                AppStrings.switchStr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final bool isIos = ref
                      .watch(isIosProvider.state)
                      .state; // Get the isIos value form isIosProvider.
                  final bool switchValue = ref
                      .watch(switchProvider.state)
                      .state; // Get the switchValue value form switchProvider.

                  if (isIos) {
                    return CupertinoSwitch(
                      value: switchValue,
                      onChanged: (value) => ref
                          .read(switchProvider.state)
                          .state = value, // Change the state of switchProvider.
                      activeColor: Colors.purple,
                    );
                  } else {
                    return Switch(
                      value: switchValue,
                      activeColor: Colors.purple,
                      onChanged: (value) => ref
                          .read(switchProvider.state)
                          .state = value, // Change the state of switchProvider.
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
