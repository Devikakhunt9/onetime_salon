import 'package:flutter/material.dart';

class POPUPPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight / 2.5;

    return   Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.blue.shade900,
            child: Column(
              children: [
                ClipRect(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: .92,
                    child: Image.asset(
                      'assets/images/Mask_group_2.png',
                      fit: BoxFit.fill,
                      height: imageHeight,
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0x800000FF),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Container(
                  height: 450,
                  width: 350,
                  child: Column(
                    children: [
                      Container(
                        height: 375,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: Colors.indigo.shade900,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Successfully your\naccount done",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Successfully create your account\nnow enjoy our apps",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 19,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('Account Created Pop Up');
                        },
                        child: Container(
                          height: 75,
                          child: Center(
                              child: Text(
                                "OK",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo),
                              )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      );
  }
}
