import 'package:card/shared/saveImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImgCard extends StatefulWidget {
  const ImgCard({super.key});

  @override
  State<ImgCard> createState() => _ImgCardState();
}

class _ImgCardState extends State<ImgCard> {
  bool activateButton = false;
  Uint8List? imgPath;
  Uint8List? imgCardPath1;
  Uint8List? imgCardPath2;

  uploadImageToScreen(ImageSource source) async {
    Navigator.pop(context);
    final XFile? pickedImg = await ImagePicker().pickImage(source: source);
    try {
      if (pickedImg != null) {
        imgPath = await pickedImg.readAsBytes();
        setState(() {});
      }
    } catch (e) {
      print("Error => $e");
    }
  }

  uploadImageToScreen1(ImageSource source) async {
    Navigator.pop(context);
    final XFile? pickedImg = await ImagePicker().pickImage(source: source);
    try {
      if (pickedImg != null) {
        imgCardPath1 = await pickedImg.readAsBytes();
        setState(() {});
      }
    } catch (e) {
      print("Error => $e");
    }
  }

  uploadImageToScreen2(ImageSource source) async {
    Navigator.pop(context);
    final XFile? pickedImg = await ImagePicker().pickImage(source: source);
    try {
      if (pickedImg != null) {
        imgCardPath2 = await pickedImg.readAsBytes();
        setState(() {});
      }
    } catch (e) {
      print("Error => $e");
    }
  }

  showmodel() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImageToScreen(ImageSource.camera);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Camera",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImageToScreen(ImageSource.gallery);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Gallary",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  showmodel1() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImageToScreen1(ImageSource.camera);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Camera",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () async {
                // Navigator.of(context).pop();
                await uploadImageToScreen1(ImageSource.gallery);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Gallary",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  showmodel2() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
              onPressed: () async {
                await uploadImageToScreen2(ImageSource.camera);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Camera",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: () async {
                await uploadImageToScreen2(ImageSource.gallery);
              },
              padding: const EdgeInsets.all(20),
              child: const Text(
                "From Gallary",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 170,
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10), bottom: Radius.circular(10)),
              ),
              margin: const EdgeInsets.only(left: 15, right: 12, top: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // الصورة الشخية
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: GestureDetector(
                          onTap: () async {
                            await showmodel();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  //color: Color.fromARGB(255, 106, 105, 105),
                                  color: const Color.fromARGB(255, 130, 48, 48),
                                  width: 3),
                            ),
                            child: Stack(
                              children: [
                                imgPath == null
                                    ? const CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(161, 247, 247, 247),
                                        radius: 60,
                                        backgroundImage: AssetImage(
                                          'assets/images/user.png',
                                        ),
                                      )
                                    : Positioned(
                                        child: CircleAvatar(
                                          //backgroundColor: primaryColor,
                                          radius: 60,
                                          backgroundImage:
                                              MemoryImage(imgPath!),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "الصورة الشخصية",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'my',
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 130, 48, 48),
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(11)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 130, 48, 48),
                              width: 3,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "  صورة الوثيقة الامامية",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'my',
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // صورت البطاقة الامامية
                        SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: GestureDetector(
                              onTap: () async {
                                await showmodel1();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(11)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                child: imgCardPath1 == null
                                    ? Image.asset(
                                        "assets/images/id-card.png",
                                        color: const Color.fromARGB(
                                            130, 106, 105, 105),
                                      )
                                    : Image(
                                        image: MemoryImage(imgCardPath1!),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 130, 48, 48),
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(11)),
                            border: Border.all(
                              color: const Color.fromARGB(255, 130, 48, 48),
                              width: 3,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "صورة الوثيقة الخلفية",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'my',
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // صورت البطاقة الامامية
                        SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: GestureDetector(
                              onTap: () async {
                                await showmodel2();
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      bottom: Radius.circular(11)),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                child: imgCardPath2 == null
                                    ? Image.asset(
                                        "assets/images/id-card.png",
                                        color: const Color.fromARGB(
                                            130, 106, 105, 105),
                                      )
                                    : Image(
                                        image: MemoryImage(imgCardPath2!),
                                      ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
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
                        print('=====================>> تم');
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
                      onPressed: () async {
                        if (imgPath != null &&
                            imgCardPath1 != null &&
                            imgCardPath1 != null) {
                          await ImageStoragez()
                              .saveImageToPrefs('pr', imgPath!);
                          await ImageStoragez()
                              .saveImageToPrefs('img1', imgCardPath1!);
                          await ImageStoragez()
                              .saveImageToPrefs('img2', imgCardPath2!);
                        }
                        print('=====================>> تم');
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
