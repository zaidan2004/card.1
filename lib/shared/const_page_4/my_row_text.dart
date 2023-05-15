


import 'package:card/shared/contants.dart';
import 'package:flutter/material.dart';


const line = Divider(color: Color.fromARGB(255, 106, 105, 105), thickness: 1);


class MyRowTextWidget extends StatelessWidget {
  const MyRowTextWidget({
    Key? key,
    required this.keyText,
    required this.valueText,
    this.min = MainAxisAlignment.end,
    this.lin = const Divider(color: Colors.white,)
  }) : super(key: key);

  final String keyText;
  final String valueText;
  final MainAxisAlignment min;
  final Widget lin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10,),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: min,
            children: [
              Text(
                valueText,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 106, 105, 105),
                  fontFamily: 'my',
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                keyText,
                style: const TextStyle(
                  fontSize: 12,
                  color: appcColor,
                  fontFamily: 'my',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          lin
        ],
      ),
    );
  }
}
