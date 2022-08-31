import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Platforms {
  android,
  ios,
  linux,
  mac,
}

// StateProvider for Slider widget, by default 0.
final StateProvider sliderProvider = StateProvider<double>((ref) => 0);
// StateProvider for Switch widget, by default false.
final StateProvider switchProvider = StateProvider<bool>((ref) => false);
// StateProvider to handle toggle between Ios and android, by default false i.e. Android.
final StateProvider platformProvider =
    StateProvider<Platforms>((ref) => Platforms.android);
// StateProvider for Radio widget Group, by default the value is Flutter.
final StateProvider selectedRadioItemProvider =
    StateProvider<String>((ref) => 'Flutter');
