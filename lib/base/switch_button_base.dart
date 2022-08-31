import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SwitchButtonBase {
  Widget render(
    BuildContext context,
    WidgetRef ref,
  );

  String className();
}
