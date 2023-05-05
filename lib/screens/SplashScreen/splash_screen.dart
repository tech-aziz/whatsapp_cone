import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/components/navigates.dart';

import '../../components/size_box.dart';
import '../../utilities/colors.dart';
import '../../utilities/config.dart';
import '../Auth/WelcomeScreen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      navigate(context, WelcomeScreen());
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appBg,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            sizeBox(0, 0),
            Image.asset(
              logo,
              color: whiteColor.withOpacity(.8),
              width: size * .2,
            ),
            sizeBox(0, 0),
            Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(color: whiteColor.withOpacity(0.5)),
                ),
                sizeBox(5, 0),
                Text('FACEBOOK',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
