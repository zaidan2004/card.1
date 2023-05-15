import 'package:card/shared/const_page_2/qr_cod_sc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/const_page_2/contants.dart';
import '../shared/const_page_2/my_textfield_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool activateButton = false;
  DateTime dateTime = DateTime(2000, 2, 1, 10, 20);

  String idDataScan = "";

  final placeOfBirthController = TextEditingController();
  final idCardNumberController = TextEditingController();
  final issuerController = TextEditingController();
  final releaseDateController = TextEditingController();
  final dateDExpirationController = TextEditingController();
  final dateDEnaissanceController = TextEditingController();

  DateTime t = DateTime.now();

  saveStringData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  savedDataPag() async {
    await saveStringData('idCardNumber', idCardNumberController.text);
    await saveStringData('placeOfBirth', placeOfBirthController.text);
    await saveStringData('dateDEnaissance', dateDEnaissanceController.text);
    await saveStringData('issuer', issuerController.text);
    await saveStringData('releaseDate', releaseDateController.text);
    await saveStringData('dateDExpiration', dateDExpirationController.text);
  }
  
   bool idCardNumber11Char = false;
  onPasswordChanged(String password) {
    
    idCardNumber11Char = false;
    setState(() {
      if (password.contains(RegExp(r'.{8,}'))) {
        idCardNumber11Char = true;
      }
    });
  }

  @override
  void dispose() {
    placeOfBirthController.dispose();
    idCardNumberController.dispose();
    issuerController.dispose();
    releaseDateController.dispose();
    dateDExpirationController.dispose();
    dateDEnaissanceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(10),
                ),
              ),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      " بيانات البطاقة الشخصية",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 130, 48, 48),
                        fontFamily: 'my',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'رقم البطاقة الشخصية',
                      textField: TextFormField(
                         validator: (value) {
                          return value != null &&
                                  idCardNumber11Char
                              ? "❗ رقم البطاقة الذي ادخلتة غر صحيح "
                              : null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction, 
                        controller: idCardNumberController,
                        textAlign: TextAlign.right,
                        decoration: zdecoration.copyWith(
                          hintText: 'رقم البطاقة الشخصية',
                        ),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                               fontSize: 12,
                              fontFamily: "my",
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      icons: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScannerCODE(
                                idController: idCardNumberController,
                              ),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/images/barcode.ico',
                          color: const Color.fromARGB(255, 130, 48, 48),
                          height: 25,
                        ),
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'محل الميلاد',
                      textField: TextFormField(
                         validator: (value) {
                          return value != null
                              ? "❗ ادخلت قيمة غير صحيحه  "
                              : null;
                        }, 
                        controller: placeOfBirthController,
                        textAlign: TextAlign.right,
                        decoration: zdecoration.copyWith(
                          hintText: 'محل الميلاد',
                        ),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                               fontSize: 12,
                              fontFamily: "my",
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'تاريخ الميلاد',
                      textField: DateInputField(
                        hintText:
                            '${DateFormat('MMMM d, ' 'y').format(t).toString()} تاريخ الميلاد',
                        icon: Icons.calendar_month,
                        controller: dateDEnaissanceController,
                        onDateSelected: (p0) {
                          setState(() {});
                        },
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'جهة الاصدار',
                      textField: TextFormField(
                        validator: (value) {
                          return value != null
                              ? "❗ ادخلت قيمة غير صحيحه  "
                              : null;
                        },
                        controller: issuerController,
                        textAlign: TextAlign.right,
                        decoration: zdecoration.copyWith(
                          hintText: 'جهة الاصدار',
                        ),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                               fontSize: 12,
                              fontFamily: "my",
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'تاريخ الاصدار',
                      textField: DateInputField(
                        hintText:
                            '${DateFormat('MMMM d, ' 'y').format(t).toString()}  تاريخ الاصدار ',
                        icon: Icons.calendar_month,
                        controller: releaseDateController,
                        onDateSelected: (p0) {
                          setState(() {});
                        },
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: 'تاريخ الانتهاء',
                      textField: DateInputField(
                        hintText:
                            '${DateFormat('MMMM d, ' 'y').format(t).toString()}  تاريخ الانتهاء',
                        icon: Icons.calendar_month,
                        controller: dateDExpirationController,
                        onDateSelected: (p0) {
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Developed by AB_tech © 2023",
              style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(186, 106, 105, 105),
                  fontFamily: "my",
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 100,
              decoration: const BoxDecoration(
                //color: Color.fromARGB(255, 39, 111, 200),
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: ElevatedButton(
                      onPressed: () async {
                        await savedDataPag();
                        print("=====>>>>>>>>>....................");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 130, 48, 48)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.navigate_before,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            "التالي",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'my',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: ElevatedButton(
                      onPressed: () async {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 130, 48, 48)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 22, vertical: 8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11))),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "رجوع",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'my',
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
