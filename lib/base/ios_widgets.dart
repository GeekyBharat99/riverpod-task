import 'package:shaale/base/radio_button_base.dart';
import 'package:shaale/base/slider_and_switch_base.dart';
import 'package:shaale/base/switch_button_base.dart';
import 'package:shaale/base/slider_button_base.dart';
import 'package:shaale/base/widget_type_base.dart';
import 'package:shaale/widgets/new_radio_ios_button.dart';
import 'package:shaale/widgets/new_slider_and_switch_ios.dart';
import 'package:shaale/widgets/new_slider_ios_button.dart';
import 'package:shaale/widgets/new_switch_ios_button.dart';

class IosWidgets extends WidgetTypeBase {
  @override
  String className() {
    return "IosWidgets";
  }

  @override
  SliderAndSwitchBase renderSliderAndSwitch() {
    return NewSliderAndSwitchIos();
  }

  @override
  RadioButtonBase renderRadioButton() {
    return NewRadioIosButton();
  }

  @override
  SliderButtonBase renderSliderButton() {
    return NewSliderIosButton();
  }

  @override
  SwitchButtonBase renderSwitchButton() {
    return NewSwitchIosButton();
  }
}
