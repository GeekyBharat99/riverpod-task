import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaale/constants/strings.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

showIosDialog({
  required String title,
  required String content,
  required BuildContext context,
}) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            child: const Text(AppStrings.ok),
          ),
        ],
      );
    },
  );
}

showAndroidDialog({
  required String title,
  required String content,
  required BuildContext context,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            child: const Text(AppStrings.ok),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
    },
  );
}
