import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PinLoginPage extends StatefulWidget {
  const PinLoginPage({Key? key}) : super(key: key);

  @override
  _PinLoginPageState createState() => _PinLoginPageState();
}

class _PinLoginPageState extends State<PinLoginPage> {
  String pinCode = "______";

  void onNumberPressed(String number) {
    setState(() {
      pinCode = pinCode.replaceFirst("_", number);
    });
  }

  Widget buildnumber(String number, String engNumber, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Ink(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 253, 253),
              border: Border.all(
                color: const Color.fromARGB(255, 175, 175, 175),
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number,
                  style: GoogleFonts.notoSansThai(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 1, 1, 1),
                  ),
                ),
                Text(
                  engNumber,
                  style: GoogleFonts.notoSansThai(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 1, 1, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onClearPressed() {
    setState(() {
      pinCode = "______";
    });
  }

  void onBackspacePressed() {
    setState(() {
      int lastDigitIndex = pinCode.lastIndexOf(RegExp(r'\d'));

      if (lastDigitIndex >= 0) {
        pinCode = pinCode.replaceRange(lastDigitIndex, lastDigitIndex + 1, '_');
      }
    });
  }

  Widget buildIcon(IconData icons) {
    return InkWell(
      onTap: () {
        if (icons == Icons.clear) {
          onClearPressed();
        } else if (icons == Icons.backspace) {
          onBackspacePressed();
        }
      },
      child: Column(
        children: [
          Ink(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 253, 253),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons,
                  size: 18,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.security,
                    size: 60,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'PIN LOGIN',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          pinCode,
                          style: GoogleFonts.notoSansThai(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 101, 101, 101),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("1", "one",
                                onTap: () => onNumberPressed("1")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("2", "two",
                                onTap: () => onNumberPressed("2")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("3", "three",
                                onTap: () => onNumberPressed("3")),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("4", "four",
                                onTap: () => onNumberPressed("4")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("5", "five",
                                onTap: () => onNumberPressed("5")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("6", "six",
                                onTap: () => onNumberPressed("6")),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("7", "seven",
                                onTap: () => onNumberPressed("7")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("8", "eight",
                                onTap: () => onNumberPressed("8")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("9", "nine",
                                onTap: () => onNumberPressed("9")),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(child: buildIcon(Icons.clear)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: buildnumber("0", "zero",
                                onTap: () => onNumberPressed("0")),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(child: buildIcon(Icons.backspace)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
