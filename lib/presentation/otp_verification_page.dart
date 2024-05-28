import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerficationPage extends StatefulWidget {
  @override
  State<OTPVerficationPage> createState() => _OTPVerficationPageState();
}

class _OTPVerficationPageState extends State<OTPVerficationPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController textformfiled1 = TextEditingController();

  TextEditingController textformfiled2 = TextEditingController();

  TextEditingController textformfiled3 = TextEditingController();

  TextEditingController textformfiled4 = TextEditingController();

  FocusNode texteditingfocusnode1 = FocusNode();

  FocusNode texteditingfocusnode2 = FocusNode();

  FocusNode texteditingfocusnode3 = FocusNode();

  FocusNode texteditingfocusnode4 = FocusNode();

  FocusNode submit = FocusNode();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight / 2.5;
    return Container(
      color: Colors.blue.shade900,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.bottomCenter,
                heightFactor: .7,
                // Adjust this factor to control how much of the bottom part is shown
                child: Image.asset(
                  'assets/images/Mask_group_2.png',
                  fit: BoxFit.fill,
                  height: imageHeight,
                  width: double.infinity, // Adjust width as needed
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter 4-digit code\nSent to +91 9265xxxxx1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(
                    // color: Colors.pink,
                    margin: EdgeInsets.only(left: 70, right: 70, top: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
            
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextFormField(
                                  controller: textformfiled1,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter OTP";
                                    }
                                    return null;
                                  },
                                  focusNode: texteditingfocusnode1,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      FocusScope.of(context).requestFocus(
                                          texteditingfocusnode2);
                                    });
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  autofocus: true,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextFormField(
                                  controller: textformfiled2,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter OTP";
                                    }
                                  },
                                  focusNode: texteditingfocusnode2,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      FocusScope.of(context).requestFocus(
                                          texteditingfocusnode3);
                                    });
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  autofocus: true,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextFormField(
                                  controller: textformfiled3,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter OTP";
                                    }
                                  },
                                  focusNode: texteditingfocusnode3,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      FocusScope.of(context).requestFocus(
                                          texteditingfocusnode4);
                                    });
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  autofocus: true,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: TextFormField(
                                  controller: textformfiled4,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter OTP";
                                    }
                                  },
                                  focusNode: texteditingfocusnode4,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      FocusScope.of(context)
                                          .requestFocus(submit);
                                    });
                                  },
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  autofocus: true,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Resend ',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.lightBlueAccent),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Code in',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
            
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Handle policy tap
                                            print('Sign in tapped');
                                          },
                                      ),
                                      TextSpan(
            
                                        //seconds logic is pending
            
                                        text: ' seconds',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: 15,
                                          color: Colors.white,
            
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Handle policy tap
                                            print('Sign in tapped');
                                          },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          //button
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 25),
                            child: DecoratedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "SIGN UP",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                          fontSize: 15, color: Colors.indigo),
                                    ),
                                  ),
                                  onTap: () {
                                    // if (formkey.currentState!.validate()) {
                                    //
                                    //
                                    // }
                                  },
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            // padding: EdgeInsets.all(8),
                            // margin: EdgeInsets.only(left: 18, right: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
