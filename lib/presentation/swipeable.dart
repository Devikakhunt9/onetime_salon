import 'package:flutter/material.dart';
import 'package:task2/presentation/embrace_technology.dart';
import 'package:task2/presentation/every_client_special.dart';
import 'package:task2/presentation/home_page.dart';
import 'package:task2/presentation/keep_it_clean.dart';
import 'package:task2/presentation/otp_page.dart';
import 'package:task2/presentation/otp_verification_page.dart';
import 'package:task2/presentation/pop_up_page.dart';
import 'package:task2/presentation/sign_in.dart';
import 'package:task2/widgets/navigator_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(
    initialPage: 0,
  );



  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageView(
       controller: _pageController,
       scrollDirection: Axis.horizontal,
       children: [
         NavigatorPage(),
         EveryClientSpecial(),
         EmbraceTechnology(),
         KeepClean(),
         SignIN(),
         OTPPage(),
         OTPVerficationPage(),
         POPUPPage(),

       ],
     ),
    );
  }
}
