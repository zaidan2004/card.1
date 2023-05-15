import 'package:card/shared/contants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/const_page_2/contants.dart';
import '../shared/const_page_2/my_textfield_widget.dart';
import '../shared/const_page_3/name_widget.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({super.key});

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  final emailController = TextEditingController(); //الايمال
  final nationalityController = TextEditingController(); //الجنسية
  //==========NAME_Controller==============================
  final aController = TextEditingController(); // الاسم الاول
  final bController = TextEditingController(); //الاسم الثاني
  final cController = TextEditingController(); //الاسم الثالث
  final dController = TextEditingController(); //الاسم الاخير
  //======================================================
  bool activateButton = false;
  bool activateButton2 = false;
  final streetController = TextEditingController(); //'الشارع - الحي'
  List<String> mh = ['الامانة', 'صنعاء', "عدن", "اب", "تعز"];
  List<String> md = ['ذي-السفال', 'السبعين', "حدة", "التحرير", "شملان"];
  String uonItemHM = "تعز"; //المحافضة
  String uonItemHD = "السبعين"; // المديريه

  saveStringData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  savedDataPag() async {
    await saveStringData('email', emailController.text);
    await saveStringData('nationality', nationalityController.text);
    await saveStringData('a', aController.text);
    await saveStringData('b', bController.text);
    await saveStringData('c', cController.text);
    await saveStringData('d', dController.text);
    await saveStringData('sex', activateButton ? 'انثى' : 'ذكر');
    await saveStringData('governorate', uonItemHM);
    await saveStringData('directorate', uonItemHD);
    await saveStringData('street', streetController.text);
    print("تم ==========================================");
  }

  @override
  void dispose() {
    emailController.dispose();
    aController.dispose();
    bController.dispose();
    cController.dispose();
    dController.dispose();
    nationalityController.dispose();
    streetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
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
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 0,
                      ),
                      child: const Text(
                        "البيانات الشخصية",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 130, 48, 48),
                          fontFamily: 'my',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    MyTextFieldWidget(
                      topText: "عنوان البريد الإلكتروني",
                      textField: TextFormField(
                        validator: (value) {
                          return value != null &&
                                  !EmailValidator.validate(value)
                              ? "❗ الايمال الذي ادخته غير صحيح "
                              : null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'الايمال',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: appcColor,
                          ),
                        ),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 13,
                              fontFamily: "my",
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    NameWidget(
                      topText: 'الاسم الراعي مع القب',
                      aController: aController,
                      bController: bController,
                      cController: cController,
                      dController: dController,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '  الجنس',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'my',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "انثى",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (activateButton2 == false) {
                                        activateButton2 = true;
                                        activateButton = false;
                                      } else {
                                        activateButton = true;
                                        activateButton2 = false;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    activateButton2
                                        ? Icons.check_circle_sharp
                                        : Icons.circle_outlined,
                                    size: 27,
                                    color: activateButton2
                                        ? const Color.fromARGB(255, 130, 48, 48)
                                        : const Color.fromARGB(
                                            255, 106, 105, 105),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "ذكر",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (activateButton == false) {
                                        activateButton = true;
                                        activateButton2 = false;
                                      } else {
                                        activateButton = false;
                                        activateButton2 = true;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    activateButton
                                        ? Icons.check_circle_sharp
                                        : Icons.circle_outlined,
                                    size: 27,
                                    color: activateButton
                                        ? const Color.fromARGB(255, 130, 48, 48)
                                        : const Color.fromARGB(
                                            255, 106, 105, 105),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    MyTextFieldWidget(
                      topText: '  الجنسية',
                      textField: TextField(
                        controller: nationalityController,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        decoration: zdecoration.copyWith(
                          hintText: '  الجنسية',
                        ),
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 13,
                              fontFamily: "my",
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '  عنوان الاقامة الحالية',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'my',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 8, left: 8, top: 10),
                                  decoration: BoxDecoration(
                                    //color: const Color.fromARGB(30, 209, 224, 224),
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color.fromARGB(
                                          255, 130, 48, 48),
                                    ),
                                  ),
                                  height: 45,
                                  width: widthScreen / 2.6,
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    isExpanded: true,
                                    autofocus: false,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'my',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    // isExpanded: true,
                                    elevation: 5,
                                    iconEnabledColor:
                                        const Color.fromARGB(255, 130, 48, 48),
                                    borderRadius: BorderRadius.circular(11),
                                    value: uonItemHM,
                                    items: mh
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(
                                              item,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (item) {
                                      setState(() {
                                        uonItemHM = item!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: widthScreen / 6,
                                ),
                                const Text(
                                  ': المحافضة',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 130, 48, 48),
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 8, left: 8, top: 10),
                                  decoration: BoxDecoration(
                                    //color: const Color.fromARGB(30, 209, 224, 224),
                                    borderRadius: BorderRadius.circular(11),
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color.fromARGB(
                                          255, 130, 48, 48),
                                    ),
                                  ),
                                  height: 45,
                                  width: widthScreen / 2.6,
                                  child: DropdownButton<String>(
                                    isDense: true,
                                    isExpanded: true,
                                    autofocus: false,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: 'my',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    // isExpanded: true,
                                    elevation: 5,
                                    iconEnabledColor:
                                        const Color.fromARGB(255, 130, 48, 48),
                                    borderRadius: BorderRadius.circular(11),
                                    value: uonItemHD,
                                    items: md
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(
                                              item,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (item) {
                                      setState(() {
                                        uonItemHD = item!;
                                      });
                                    },
                                  ),
                                ),
                                
                                SizedBox(
                                  width: widthScreen / 5,
                                ),
                                const Text(
                                  ': المديري',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 130, 48, 48),
                                    fontFamily: 'my',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 11),
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            //color: const Color.fromARGB(30, 209, 224, 224),
                            borderRadius: BorderRadius.circular(11),
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromARGB(255, 130, 48, 48),
                            ),
                          ),
                          child: TextField(
                            maxLength: 25,
                            controller: streetController,
                            textAlign: TextAlign.right,
                            keyboardType: TextInputType.streetAddress,
                            decoration: zdecoration.copyWith(
                              hintText: 'الشارع - الحي',
                              counterText: "",
                            ),
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 13,
                                      fontFamily: "my",
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
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
                fontWeight: FontWeight.w500,
              ),
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
                              fontWeight: FontWeight.w500,
                            ),
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
                              fontWeight: FontWeight.w500,
                            ),
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

const decorationTextfield = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: appcColor,
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding: EdgeInsets.all(8),
);
