import 'package:shaale/base/radio_button_base.dart';
import 'package:shaale/base/slider_and_switch_base.dart';
import 'package:shaale/base/switch_button_base.dart';
import 'package:shaale/base/slider_button_base.dart';
import 'package:shaale/base/widget_type_base.dart';
import 'package:shaale/widgets/new_radio_button.dart';
import 'package:shaale/widgets/new_slider_and_switch.dart';
import 'package:shaale/widgets/new_slider_android.dart';
import 'package:shaale/widgets/new_switch_android.dart';

class AndroidWidgets extends WidgetTypeBase {
  @override
  String className() {
    return "AndroidWidgets";
  }

  @override
  SliderAndSwitchBase renderSliderAndSwitch() {
    return NewSliderAndSwitchAndroid();
  }

  @override
  RadioButtonBase renderRadioButton() {
    return NewRadioAndroidButton();
  }

  @override
  SliderButtonBase renderSliderButton() {
    return NewSliderAndroidButton();
  }

  @override
  SwitchButtonBase renderSwitchButton() {
    return NewSwitchAndroidButton();
  }
}
