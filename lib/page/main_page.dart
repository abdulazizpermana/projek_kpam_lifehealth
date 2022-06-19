import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/page/login_page.dart';
import 'package:projek_kpam_lifehealth/theme.dart';

import 'register_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 93,
                ),
                Image.asset("assets/images/logo.png"),
                const SizedBox(
                  height: 33,
                ),
                Image.asset(
                  "assets/images/image1.png",
                  width: 251,
                ),
                const SizedBox(
                  height: 34,
                ),
                Text(
                  'Solusi Kesehatan Bagi\nKamu dan Keluarga',
                  style: headingMain.copyWith(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  'Untuk mengakses fitur lainnya\n Silahkan Login  terlebih dahulu...',
                  style: subHeading.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 96,
                ),
                Container(
                  height: 51,
                  width: 317,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: whiteColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                Container(
                  height: 51,
                  width: 317,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
