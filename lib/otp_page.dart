import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

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
                      bottomLeft: Radius.circular(190),
                      bottomRight: Radius.circular(190))),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(190),
                    bottomLeft: Radius.circular(190)),
                child: Image.asset(
                  'assets/images/Create_New_Account.png',
                  // Replace with your actual image path
                  fit: BoxFit.fitWidth,
                  height: 250,
                  width: double.infinity, // Adjust width as needed
                ),
              ),
              height: 250,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Send OTP For Verification\nYour Account",
                      textAlign: TextAlign.center,
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
                        children: [Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: TextFormField(

                            keyboardType: TextInputType.number,
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

                              prefixIcon: GestureDetector(
                                child: true
                                    ? Icon(Icons.flag)
                                    : Icon(Icons.visibility),
                                // onTap: () {
                                //   setState(() {
                                //     obsecuretxt = !obsecuretxt;
                                //   });
                                // },
                              ),

                              fillColor: Colors.white,
                              hintText: "Enter Your number",
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
                        ),],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 25,left: 50,right: 50),
                    child: DecoratedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "SEND OTP",
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
          ],
        ),
      ],
    );
  }
}
