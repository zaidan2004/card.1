// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IntrePage1 extends StatefulWidget {
   const IntrePage1({super.key});

  @override
  State<IntrePage1> createState() => _IntrePage1State();
}

class _IntrePage1State extends State<IntrePage1> {

  bool activateButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 130, 48, 48),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: IconButton(
                    onPressed: () {
                      //Navigator.pop(context, '/IntrePage1');
                    },
                    icon: Icon(
                      Icons.clear,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 80),
                  child: Text(
                    "IntrePage1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ),
                Icon(
                      Icons.clear,
                      size: 30,
                      color: Color.fromARGB(255, 130, 48, 48),
                    ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 180),
                      child: Text(
                        "Personal data",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  Forename ',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  Middle Name ',
                              hintStyle: TextStyle(
                                fontSize: 14, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  last name ',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  titles ',
                              hintStyle: TextStyle(
                                fontSize: 14, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  phone number ',
                              hintStyle: TextStyle(
                                fontSize: 14, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 209, 224, 224),
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            color: Color.fromARGB(118, 144, 156, 156),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 7),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'the ID number ',
                              hintStyle: TextStyle(
                                fontSize: 14,  
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                              Navigator.pushNamed(context, '/TermsandConditions');
                            },
                      child: Text(
                        "Read terms and conditions",
                        style: TextStyle(
                          fontSize: 16, 
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    ///////////////////////////////////////////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if(activateButton == false){
                                activateButton = true;
                              }else{
                                activateButton = false;
                              }
                            });
                          },
                          icon: Icon(
                            activateButton?Icons.check_circle:Icons.check_circle_outline,
                            size: 20,
                            color: activateButton?Colors.blue:Colors.black,
                          ),
                        ),
                        Text(
                          "I agree to the terms and conditions",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: ElevatedButton(
                          onPressed: activateButton?() {
                          }:null,
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(activateButton?Color.fromARGB(255, 130, 48, 48):Color.fromARGB(147, 144, 34, 34)),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11))),
                          ),
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                                fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
