import 'package:flutter/material.dart';

class POPUPPage extends StatelessWidget {
  void _showAlertDialog(BuildContext context) {
    // set up the OK button
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: TextButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: Colors.blue,
          shape: BeveledRectangleBorder(side: BorderSide(color: Colors.pink))),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.blue,
      title: Center(
        child: Text(
          "AlertDialog",
          style: TextStyle(color: Colors.white),
        ),
      ),
      content: Text(
        "This is an alert dialog.",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(10),
          child: alert,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double imageHeight = screenHeight / 2.5;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: Colors.blue.shade900,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: .92,
                  // Adjust this factor to control how much of the bottom part is shown
                  child: Image.asset(
                    'assets/images/Mask_group_2.png',
                    fit: BoxFit.fill,
                    height: imageHeight,
                    width: double.infinity, // Adjust width as needed
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
                child: Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
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
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            print('Account Created Pop Up');
                          },
                          child: Container(
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
                            // color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
