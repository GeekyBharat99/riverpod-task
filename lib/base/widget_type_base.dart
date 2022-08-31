import 'package:shaale/base/radio_button_base.dart';
import 'package:shaale/base/slider_and_switch_base.dart';
import 'package:shaale/base/slider_button_base.dart';
import 'package:shaale/base/switch_button_base.dart';

abstract class WidgetTypeBase {
  SliderAndSwitchBase renderSliderAndSwitch();
  SliderButtonBase renderSliderButton();
  SwitchButtonBase renderSwitchButton();
  RadioButtonBase renderRadioButton();
  String className();
}
