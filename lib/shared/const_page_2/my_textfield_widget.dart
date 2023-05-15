import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  const MyTextFieldWidget({
    Key? key,
    required this.topText,
    this.icons = const Icon(
      Icons.bed,
      color: Colors.white,
      size: 0,
    ),
    this.textField = const TextField(),
  }) : super(key: key);

  final String topText;
  final Widget icons;
  final Widget textField;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              topText,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'my',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(right: 11,left: 8),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(
              width: 1.5,
              color: const Color.fromARGB(255, 130, 48, 48),
            ),
          ),
          child: Row(
            children: [
              icons,
              Expanded(
                child: textField,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


