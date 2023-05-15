import 'package:card/pages/test.dart';
import 'package:card/screens/intre_page_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class ChackOTPcod extends StatefulWidget {
  const ChackOTPcod({super.key});

  @override
  State<ChackOTPcod> createState() => _ChackOTPcodState();
}

class _ChackOTPcodState extends State<ChackOTPcod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 22, right: 22),
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                //color: Color.fromARGB(255, 39, 111, 200),
                color: Color.fromARGB(255, 130, 48, 48),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "انشاء حساب",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "my",
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        //Navigator.pop(context, '/IntrePage1');
                      },
                      icon: const Icon(
                        Icons.clear,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10), bottom: Radius.circular(10)),
              ),
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/images/data.json', height: 250),
                    //Center(child: Image.asset("assets/images/56152-otp-2fa.gif",height: 200,)),
                    //  const SizedBox(
                    //   height: 50,
                    // ),
                    Center(
                      child: Form(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                //color: const Color.fromARGB(30, 209, 224, 224),
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(137, 144, 156, 156),
                                ),
                              ),
                              height: 53,
                              width: 39,
                              child: Center(
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 106, 105, 105),
                                        fontFamily: "my",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: Theme.of(context).textTheme.headline6,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "اعادت الارسال",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontFamily: "my",
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "تم ارسال كود  التحقق الى رقم هاتفك",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 106, 105, 105),
                          fontFamily: "my",
                          fontWeight: FontWeight.bold),
                    ),
                    // const Text(
                    //   ' عبر الرسالة نصي ' ,
                    //        style: TextStyle(
                    //       fontSize: 15,
                    //       color: Color.fromARGB(255, 106, 105, 105),
                    //       fontFamily: "my",
                    //       fontWeight: FontWeight.bold),
                    // ),
                    const SizedBox(
                      height: 130,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  child: const ImgCard(),
                                ),
                              );
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  isIos: true,
                                  child: const AccountPromotion(),
                                ),
                              );
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
                    const SizedBox(
                      height: 10,
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
          ],
        ),
      ),
    );
  }
}
