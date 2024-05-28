import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class SignIN extends StatefulWidget {
  const SignIN({super.key});

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  TextEditingController confirmpass = TextEditingController();
  bool obsecuretxt = true;
  bool confrimobsecuretxt = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight / 2.5;
    return Form(
      key: formkey,
      child: Container(
        color: Colors.blue.shade900,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create New Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50, top: 15),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please Enter Your email';
                                  }

                                  return null;
                                },
                                controller: username,
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Email or Phone number",
                                  hintStyle: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Password",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15),
                              child: TextFormField(
                                controller: password,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please Enter your password";
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    child: obsecuretxt
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onTap: () {
                                      setState(() {
                                        print(obsecuretxt);
                                        obsecuretxt = !obsecuretxt;
                                      });
                                    },
                                  ),
                                  fillColor: Colors.white,
                                  hintText: "Type Password",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Itim',
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                obscureText: obsecuretxt,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5.0,
                              ),
                              child: TextFormField(
                                controller: confirmpass,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "please Enter your password";
                                  }
                                  return null;
                                },
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    child: confrimobsecuretxt
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onTap: () {
                                      setState(() {
                                        confrimobsecuretxt =
                                            !confrimobsecuretxt;
                                      });
                                    },
                                  ),
                                  fillColor: Colors.white,
                                  hintText: "Type Password",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Itim',
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                obscureText: confrimobsecuretxt,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Transform.scale(
                                  scale: 0.7, // Scale the checkbox size
                                  child: Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    shape: BeveledRectangleBorder(),
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                    activeColor: Colors.white,
                                    checkColor: Colors.blue,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'I accept the ',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'policy and terms',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.lightBlue),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // Handle policy tap
                                            print('Policy tapped');
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(top: 12),
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
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ),
                                    onTap: () {
                                      if (formkey.currentState!.validate()) {
                                        print('Sign up taped');
                                      }
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
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already have account? ',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Sign in',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Handle policy tap
                                          print('Sign in tapped');
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            )
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
      ),
    );
  }
}
