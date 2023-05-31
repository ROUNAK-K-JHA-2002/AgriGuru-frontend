import 'package:agriguru/helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                image: const AssetImage("assets/splashBG.jpeg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          Expanded(
              child: Container(
            color: Colors.transparent,
          )),
          Button(
            onTap: () {},
            text: 'Proceed',
          ),
          SizedBox(
            height: 3.h,
          )
        ]),
      ),
    );
  }
}
