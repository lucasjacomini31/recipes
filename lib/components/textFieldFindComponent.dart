import 'package:flutter/material.dart';
import 'package:recipes/components/Category.dart';
import 'package:recipes/components/sliderComponent.dart';
import 'package:recipes/screen/principalScreen.dart';

class TextFieldFind extends StatefulWidget {
  final placeholderTitle;

  const TextFieldFind({super.key, required this.placeholderTitle});

  @override
  State<TextFieldFind> createState() => _TextFieldFindState(placeholderTitle);
}

class _TextFieldFindState extends State<TextFieldFind> {
  String placeholderTitle = '';

  _TextFieldFindState(this.placeholderTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
        transformAlignment: Alignment.topLeft,
        width: 300,
        child: TextField(
          onSubmitted: (filter) {
            category.findCategory(filter);
          },
          decoration: InputDecoration(
              border: const OutlineInputBorder(gapPadding: 0),
              suffix: Image.asset('assets/icons/find_icon.png',
                  width: 15, height: 15, color: Colors.black.withOpacity(0.3)),
              fillColor: const Color.fromRGBO(241, 245, 244, 1),
              hintText: placeholderTitle,
              hintStyle:
                  const TextStyle(color: Color.fromRGBO(113, 127, 127, 1))),
        ));
  }
}
