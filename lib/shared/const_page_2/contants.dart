import 'package:card/shared/contants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var zdecoration = const InputDecoration(
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
);

class DateInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final Function(DateTime) onDateSelected;
  const DateInputField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.onDateSelected,
  });

  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        initialEntryMode: DatePickerEntryMode.input,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: appcColor,
              buttonTheme:
                  const ButtonThemeData(textTheme: ButtonTextTheme.primary),
              colorScheme: const ColorScheme.light(primary: appcColor)
                  .copyWith(secondary: appcColor),
            ),
            child: child!,
          );
        });

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.onDateSelected(picked);
        widget.controller.text =
            DateFormat('MMMM d, ' 'y').format(picked).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      controller: widget.controller,
      onTap: () {
        _selectDate(context);
      },
      keyboardType: TextInputType.phone,
      textAlign: TextAlign.right,
      style: Theme.of(context).textTheme.headline6?.copyWith(
            fontSize: 13,
            fontFamily: "my",
            fontWeight: FontWeight.w500,
          ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        icon: Icon(
          widget.icon,
          color: const Color.fromARGB(255, 130, 48, 48),
          size: 25,
        ),
      ),
    );
  }
}
