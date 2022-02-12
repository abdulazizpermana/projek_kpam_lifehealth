import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final List<String> imgSlider = [
    'banner.png',
    'Baner1.png',
    'Baner2.png',
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/images/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    options: CarouselOptions(
      height: 163,
      autoPlay: true,
      enlargeCenterPage: true,
      aspectRatio: 2.0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/foto.png",
                    width: 40,
                  ),
                  Image.asset(
                    "assets/images/icon_notif.png",
                    width: 25,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    autoPlayImage,
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Layanan Kami",
                style: blackReguler.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
