import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaale/helper/helper_widgets.dart';
import 'package:shaale/constants/strings.dart';
import 'package:shaale/widgets/sliders.dart';
import 'package:shaale/widgets/switches.dart';

class SliderAndSwitchAndroid extends StatelessWidget {
  const SliderAndSwitchAndroid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: const [
              Text(
                AppStrings.slider,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AndroidSlider(),
            ],
          ),
        ),
        addHorizontalSpace(16),
        Expanded(
          child: Column(
            children: const [
              Text(
                AppStrings.switchStr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AndroidSwitch(),
            ],
          ),
        ),
      ],
    );
  }
}

class SliderAndSwitchIOS extends StatelessWidget {
  const SliderAndSwitchIOS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: const [
              Text(
                AppStrings.slider,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IosSlider(),
            ],
          ),
        ),
        addHorizontalSpace(16),
        Expanded(
          child: Column(
            children: const [
              Text(
                AppStrings.switchStr,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IosSwitch(),
            ],
          ),
        ),
      ],
    );
  }
}
