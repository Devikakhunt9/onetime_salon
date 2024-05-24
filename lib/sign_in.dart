import 'package:flutter/material.dart';
import 'dart:math' as math;

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.indigo.shade900,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(900),
                      bottomRight: Radius.circular(900))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(250),
                    bottomLeft: Radius.circular(250)),
                child: Image.asset(
                  'assets/images/Create_New_Account.png',
                  // Replace with your actual image path
                  fit: BoxFit.fitWidth,
                  height: 200,
                  width: double.infinity, // Adjust width as needed
                ),
              ),
              height: 200,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
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
                              // controller: username,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                errorBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                fillColor: Colors.white,
                                hintText: "Email or Phone number",
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
                              // controller: password,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please Enter your password";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  child: true
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  // onTap: () {
                                  //   setState(() {
                                  //     obsecuretxt = !obsecuretxt;
                                  //   });
                                  // },
                                ),
                                fillColor: Colors.white,
                                hintText: "Type Password",
                                hintStyle: TextStyle(
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
                              obscureText: true,
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
                              // controller: password,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "please Enter your password";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  child: true
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  // onTap: () {
                                  //   setState(() {
                                  //     obsecuretxt = !obsecuretxt;
                                  //   });
                                  // },
                                ),
                                fillColor: Colors.white,
                                hintText: "Type Password",
                                hintStyle: TextStyle(
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
                              obscureText: true,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Colors.white, // custom border color
                                    // width: 2.0, // custom border width
                                  ),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),

                                activeColor: Colors.blue,
                                checkColor: Colors.white,
                                value: false,
                                onChanged: (value) {
                                  //   setState(() {
                                  //     isChecked = value!;
                                  //   });
                                },
                              ),
                              Text(
                                "I accept the polic and terms",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
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
            ),
          ],
        ),
      ],
    );
  }
}
