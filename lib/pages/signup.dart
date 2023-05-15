
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool activateButton = false;
  bool isLodeing = false;

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
                    const SizedBox(
                      height: 10,
                    ),
                    LinearProgressIndicator(
                      color: isLodeing
                          ? const Color.fromARGB(255, 130, 48, 48)
                          : Colors.white,
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: BoxDecoration(
                        //color: const Color.fromARGB(30, 209, 224, 224),
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 130, 48, 48),
                        ),
                      ),
                      child: const TextField(
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رقم الهاتف',
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(154, 106, 105, 105),
                              fontFamily: "my",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "قراءة الشروط والاحكام",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontFamily: 'my',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "       اوافق على الشروط ولاحكام",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'my',
                            fontWeight: FontWeight.bold,
                          ),
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
                                ? Icons.check_circle
                                : Icons.check_circle_outline,
                            size: 20,
                            color: activateButton ? Colors.blue : Colors.black,
                          ),
                        ),
                      ],
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: ElevatedButton(
                          onPressed: activateButton
                              ? () async {
                                  await FirebaseAuth.instance.verifyPhoneNumber(
                                    phoneNumber: '+967 774 146 433',
                                    verificationCompleted:
                                        (PhoneAuthCredential credential) {},
                                    verificationFailed:
                                        (FirebaseAuthException e) {},
                                    codeSent: (String verificationId,
                                        int? resendToken) {

                                        },
                                    codeAutoRetrievalTimeout:
                                        (String verificationId) {},
                                  );
                                  // if (!mounted) return;
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //     type: PageTransitionType.leftToRight,
                                  //     child: const ChackOTPcod(),
                                  //   ),
                                  // );
                                }
                              : null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                activateButton
                                    ? const Color.fromARGB(255, 130, 48, 48)
                                    : const Color.fromARGB(147, 144, 34, 34)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(11)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11))),
                          ),
                          child: const Text(
                            "  انشاء الحساب",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'my',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
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
              "Developed by AB_tec © 2023",
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
