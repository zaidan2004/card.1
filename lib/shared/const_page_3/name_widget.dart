






import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key? key,
    required this.topText,
    required this.aController,
    required this.bController,
    required this.cController,
    required this.dController,
  }) : super(key: key);

  final String topText;
  final TextEditingController aController;
  final TextEditingController bController;
  final TextEditingController cController;
  final TextEditingController dController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
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
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NewTextFormField(
              controller: bController,
              hintText: "اسم الاب",
            ),
            NewTextFormField(
              controller: aController,
              hintText: "الاسم الاول",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NewTextFormField(
              controller: dController,
              hintText: "القب",
            ),
            NewTextFormField(
              controller: cController,
              hintText: "اسم الجد",
            ),
          ],
        ),
      ],
    );
  }
}

class NewTextFormField extends StatelessWidget {
  const NewTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 11, ),
          margin: const EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(
              width: 1.5,
              color: const Color.fromARGB(255, 130, 48, 48),
            ),
          ),
      width: widthScreen / 2.6,
      height: 54,
      child: Center(
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
            fontSize: 13,
            fontFamily: "my",
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB( 255, 106, 105, 105),
          ),
          ),
          style: Theme.of(context).textTheme.headline6,
          keyboardType: TextInputType.name,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}







