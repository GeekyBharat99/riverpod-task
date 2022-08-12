import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaale/state_providers/state_providers.dart';
import 'package:shaale/constants/strings.dart';

class RadioButtonGroup extends StatelessWidget {
  RadioButtonGroup({
    Key? key,
  }) : super(key: key);

  final List<String> radioItems = [
    AppStrings.flutter,
    AppStrings.reactJs,
    AppStrings.nodeJs,
    AppStrings.django,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          AppStrings.radioButtonGroup,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Consumer(builder: (context, ref, child) {
          final String selectedRadioItem = ref
              .watch(selectedRadioItemProvider.state)
              .state; //  Get the selectedRadioItem value form selectedRadioItemProvider.
          return ListView.builder(
            shrinkWrap: true,
            itemCount: radioItems.length,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) => RadioListTile(
              title: Text(radioItems[index]),
              value: radioItems[index],
              groupValue: selectedRadioItem,
              onChanged: (val) {
                ref.read(selectedRadioItemProvider.state).state = radioItems[
                    index]; // Change the state of selectedRadioItemProvider.
              },
            ),
          );
        }),
      ],
    );
  }
}
