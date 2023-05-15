import 'dart:typed_data';
import 'package:card/shared/contants.dart';
import 'package:card/shared/saveImg.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/const_page_4/my_row_text.dart';

class SignUp4 extends StatefulWidget {
  const SignUp4({super.key});

  @override
  State<SignUp4> createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  DateTime t = DateTime.now();
  bool activateButton = false;
  Uint8List? imgPath;
  Uint8List? imgCard1;
  Uint8List? imgCard2;

  var email = 'لايوجد بيانات';
  var nationality = 'لايوجد بيانات';
  var a = 'لايوجد بيانات';
  var b = 'لايوجد بيانات';
  var c = 'لايوجد بيانات';
  var d = 'لايوجد بيانات';
  var sex = 'لايوجد بيانات';
  var governorate = 'لايوجد بيانات';
  var directorate = 'لايوجد بيانات';
  var street = 'لايوجد بيانات';
  // ========================================
  var idCardNumber = 'لايوجد بيانات';
  var placeOfBirth = 'لايوجد بيانات';
  var dateDEnaissance = 'لايوجد بيانات';
  var issuer = 'لايوجد بيانات';
  var releaseDate = 'لايوجد بيانات';
  var dateDExpiration = 'لايوجد بيانات';

  gatData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    imgPath = await ImageStoragez().getImageFromPrefs('pr');
    imgCard1 = await ImageStoragez().getImageFromPrefs('img1');
    imgCard2 = await ImageStoragez().getImageFromPrefs('img2');
    print('xxxxxx=====================>> تم');
    setState(() {
      email = prefs.getString('email').toString();
      nationality = prefs.getString('nationality').toString();
      a = prefs.getString('a').toString();
      b = prefs.getString('b').toString();
      c = prefs.getString('c').toString();
      d = prefs.getString('d').toString();
      sex = prefs.getString('sex').toString();
      governorate = prefs.getString('governorate').toString();
      directorate = prefs.getString('directorate').toString();
      street = prefs.getString('street').toString();
      //======================================================
      idCardNumber = prefs.getString('idCardNumber').toString();
      placeOfBirth = prefs.getString('placeOfBirth').toString();
      dateDEnaissance = prefs.getString('dateDEnaissance').toString();
      issuer = prefs.getString('issuer').toString();
      releaseDate = prefs.getString('releaseDate').toString();
      dateDExpiration = prefs.getString('dateDExpiration').toString();
    });
    print("تم ==========================================");
  }

  @override
  void initState() {
    gatData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;
    return imgPath == null
        ? Column(
            children: const [
              SizedBox(
                height: 170,
              ),
              LinearProgressIndicator(
                color: Colors.amber,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
            ],
          )
        : Scaffold(
            backgroundColor: Colors.grey[100],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                        bottom: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.grey.withOpacity(0.18),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: heightScreen / 10,
                              width: heightScreen / 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: appcColor, width: 3),
                              ),
                              child: CircleAvatar(
                                backgroundImage: MemoryImage(imgPath!),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '$a $b $d',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: appcColor,
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  email,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: Color.fromARGB(255, 96, 94, 94),
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.amber, thickness: 3),
                        MyRowTextWidget(
                          keyText: 'الاسم الرباعي',
                          valueText: '$a$b $c$d',
                        ),
                        MyRowTextWidget(
                          keyText: 'البريد الاكتروني',
                          valueText: email,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyRowTextWidget(
                              keyText: 'الجنس ',
                              valueText: sex,
                            ),
                            MyRowTextWidget(
                              keyText: 'الجنسية',
                              valueText: nationality,
                            ),
                          ],
                        ),
                        MyRowTextWidget(
                          keyText: 'عنوان الاقامة',
                          valueText: street,
                        ),
                        MyRowTextWidget(
                          keyText: 'المحافضة',
                          valueText: '$governorate - $directorate',
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10),
                        bottom: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.grey.withOpacity(0.18),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: const EdgeInsets.only(top: 5, right: 25),
                          child: const Text(
                            " بيانات البطاقة الشخصية",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'my',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(color: Colors.amber, thickness: 3),
                        MyRowTextWidget(
                          keyText: 'رقم البطقة',
                          valueText: idCardNumber,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        MyRowTextWidget(
                          keyText: 'مكان الميلاد',
                          valueText: placeOfBirth,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        MyRowTextWidget(
                          keyText: 'تاريخ الميلاد',
                          valueText: dateDEnaissance,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        MyRowTextWidget(
                          keyText: 'جهة الاصدار',
                          valueText: issuer,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        MyRowTextWidget(
                          keyText: 'تاريخ الاصدار',
                          valueText: releaseDate,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        MyRowTextWidget(
                          keyText: 'تاريخ الانتهاء',
                          valueText: dateDExpiration,
                          min: MainAxisAlignment.spaceAround,
                          lin: line,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthScreen / 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                          "الشروط ولاحكام",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            //fontFamily: 'my',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                                   Text(
                                    " اوافق على",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      //fontFamily: 'my',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (activateButton == false) {
                                      activateButton = true;
                                    } else {
                                      activateButton = false;
                                    }
                                  });
                                },
                                icon: Icon(
                                  activateButton
                                      ? Icons.check_circle_sharp
                                      : Icons.circle_outlined,
                                  size: 23,
                                  color: activateButton
                                      ? const Color.fromARGB(255, 130, 48, 48)
                                      : const Color.fromARGB(255, 106, 105, 105),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                      ],
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      //color: Color.fromARGB(255, 39, 111, 200),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
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
                            onPressed: activateButton? (){} : null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  activateButton?
                                  const Color.fromARGB(255, 130, 48, 48):
                                  const Color.fromARGB(205, 130, 48, 48)
                              ),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
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
                                  "   انهاء",
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
                            onPressed: () async {
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 130, 48, 48)),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
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
