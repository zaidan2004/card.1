import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

import '../screens/intre_page_1.dart';
import '../screens/intre_page_2.dart';
import '../screens/intre_page_3.dart';
import '../screens/intre_page_4.dart';

class AccountPromotion extends StatefulWidget {
  const AccountPromotion({super.key});

  @override
  State<AccountPromotion> createState() => _AccountPromotionState();
}

class _AccountPromotionState extends State<AccountPromotion> {
  final PageController _pageController = PageController();
  bool onLastPage = false;
  int currentPage = 0;
  int activeStep1 = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {},
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ImgCard(),
                const SignUp(),
                const SignUp3(),
                const SignUp4(),
              ],
            ),
          Container(
            padding: const EdgeInsets.only(top: 25, right: 0, left: 00),
            width: double.infinity,
            height: 170,
            decoration: const BoxDecoration(
              //color: Color.fromARGB(255, 39, 111, 200),
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "ترقية حساب  ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 130, 48, 48),
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
                          color: Color.fromARGB(255, 130, 48, 48),
                        ),
                      ),
                    ],
                  ),
                ),
                NumberStepper(
                  alignment: Alignment.center,
                  onStepReached: (index) {
                    int indexpag = 0;
                    if (index == 0) {
                      indexpag = 3;
                    } else if(index == 1){
                      indexpag = 2;
                    }else if (index == 2){
                      indexpag = 1;
                    }else {
                      indexpag = 0;
                    }
                    _pageController.jumpToPage(indexpag);
                  },
                  activeStepBorderWidth: 1,
                  steppingEnabled: true,
                  numberStyle: const TextStyle(color: Colors.white),
                  stepColor: Colors.grey[300],
                  lineDotRadius: 10,
                  lineColor: const Color.fromARGB(255, 130, 48, 48),
                  lineLength: 25,
                  scrollingDisabled: true,
                  enableNextPreviousButtons: false,
                  activeStep: activeStep1,
                  activeStepColor: const Color.fromARGB(255, 130, 48, 48),
                  activeStepBorderColor: const Color.fromARGB(255, 130, 48, 48),
                  numbers: const [4, 3, 2, 1],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
