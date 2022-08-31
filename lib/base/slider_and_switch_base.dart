import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SliderAndSwitchBase {
  Widget render(
    BuildContext context,
    WidgetRef ref,
  );

  String className();
}
