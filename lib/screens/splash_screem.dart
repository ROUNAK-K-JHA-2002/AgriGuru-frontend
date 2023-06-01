import 'package:agriguru/helpers.dart';
import 'package:agriguru/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants.dart';
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
                    Colors.black.withOpacity(0.8), BlendMode.darken),
                image: const AssetImage("assets/splashBG.jpeg"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(children: [
            Expanded(
                child: Container(
              color: Colors.transparent,
            )),
            Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 90.w,
                child: Text.rich(TextSpan(
                    text: 'Smart Farming \n',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Agriculture \n',
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.greenAccent.shade700,
                          letterSpacing: 2,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: 'App for ',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          letterSpacing: 2,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Farmers',
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.orange,
                          letterSpacing: 2,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ]))),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 90.h,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                "We help you integrate nature with science \nfor better practices in agriculture and \nfarming.",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              child: Button(
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
                text: 'Proceed',
                borderRadius: 20,
                boxColor: Colors.white,
                textColor: hexToColor(appRootColor),
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ]),
        ),
      ),
    );
  }
}
