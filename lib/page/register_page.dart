import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/page/login_page.dart';

import '../theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F0F9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Text(
                  "Register",
                  style: subHeadingPage.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 59,
              ),
              Text(
                "Username",
                style: blackReguler.copyWith(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: blackReguler.copyWith(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Password",
                style: blackReguler.copyWith(
                  fontSize: 18,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              Container(
                height: 51,
                width: 317,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: primaryColor,
                  onPressed: () {},
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
              const SizedBox(
                height: 29,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/Line.png",
                    ),
                    Text(
                      "atau masuk dengan",
                      style: blackReguler.copyWith(fontSize: 18),
                    ),
                    Image.asset(
                      "assets/images/Line.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/icon.png",
                  ),
                  Image.asset(
                    "assets/images/icon1.png",
                  ),
                  Image.asset(
                    "assets/images/icon2.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "sudah punya akun?",
                    style: blackReguler.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: headingLogo.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
