import 'package:flutter/material.dart';
import 'dart:math' as math;

class KeepClean extends StatelessWidget {
  const KeepClean({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue.shade900,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          ClipRect(
            child: Align(
              alignment: Alignment.bottomCenter,
              heightFactor: .92, // Adjust this factor to control how much of the bottom part is shown
              child: Image.asset(
                'assets/images/Mask_group_2.png',
                fit: BoxFit.fill,
                height: 350,
                width: double.infinity, // Adjust width as needed
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    "Keep it Clean",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0,bottom: 50),
                  child: Text(
                    "Perfect salon booking apps for your\nbeauty and comfortable life",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(

                          height: 15,
                          width: 15,
                          decoration:BoxDecoration(color: Colors.blue,shape: BoxShape.circle)

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(

                          height: 15,
                          width: 15,
                          decoration:BoxDecoration(color: Colors.blue,shape: BoxShape.circle)

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(

                          height: 15,
                          width: 15,
                          decoration:BoxDecoration(color: Colors.lightBlue.shade50,shape: BoxShape.circle)

                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
