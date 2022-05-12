import 'dart:ui';

import 'package:crypto_dashboard/pages/coin_detail/coin_detail.dart';
import 'package:crypto_dashboard/pages/home/homepage.dart';
import 'package:crypto_dashboard/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/abdiel.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ClipRRect( // make sure we apply clip it properly
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 60, sigmaY: 90),
          child: ScreenUtilInit(
            designSize: Size(375, 812),
            builder: () {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: "Flutter Coffee UI",
                themeMode: ThemeMode.dark,
                darkTheme: ThemeData(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
                    caption: TextStyle(
                      color: kCaptionColor,
                      fontSize: 16.0,
                    ),
                  ),

                  scaffoldBackgroundColor: Colors.transparent,
                  appBarTheme: AppBarTheme(
                    elevation: 0.0,
                    color: Colors.transparent,
                  ),
                ),
                home: HomePage(),
              );
            },
          ),
        ),
      ),

    );
  }
}
