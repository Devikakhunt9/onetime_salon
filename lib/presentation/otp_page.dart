import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  String? selectedValue;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController mobile_no = TextEditingController();
  final List<String> items = ['IND', 'AUS', 'US'];

  @override
  Widget build(BuildContext context) {
    selectedValue = 'IND';
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
                // color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Send OTP For Verification\nYour Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Container(
                      // color: Colors.pink,
                      margin: EdgeInsets.only(left: 50, right: 50, top: 15),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            //dropdown

                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4.0),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: DropdownButtonFormField<String>(
                                        value: selectedValue,
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedValue = newValue;
                                          });
                                        },
                                        items: items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10.0),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              bottomLeft: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        dropdownColor: Colors.white,
                                        isDense: true,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Text('|'),
                                    Expanded(
                                      flex: 3,
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Your Mobile no';
                                          }
                                          if(value!.toString().length!=10 && value!.toString().length < 10){
                                            return 'Enter Valid mobile no';
                                          }
                                          if(value!.toString().length!=10 && value!.toString().length > 10){
                                            return 'Enter Valid mobile no';
                                          }

                                          return null;
                                        },
                                        controller: mobile_no,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          hintText: "Enter number",
                                          hintStyle: TextStyle(
                                            fontFamily: 'Itim',
                                            color: Colors.grey,
                                          ),
                                          fillColor: Colors.white,
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(4.0),
                                              bottomRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: TextStyle(color: Colors.black),
                                        cursorColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
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
                                        "Send OTP",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ),
                                    onTap: () {
                                      if (formkey.currentState!.validate()) {
                                        print('Send OTP is tapped');
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
