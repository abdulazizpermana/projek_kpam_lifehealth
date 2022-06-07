import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/page/login_page.dart';
import 'package:projek_kpam_lifehealth/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  int _selectedIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'https://live.staticflickr.com/65535/51770528611_35195ac56b_c.jpg',
    'http://dinkes.kukarkab.go.id/foto_berita/14cover%20booster.jpg',
    'http://karyamakmur.bangka.go.id/sites/default/files/images/berita/285c1df0db48979a3a2a37e6b8c15101.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              "assets/images/pic.png",
                              width: 35,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Halo, Selamat Datang",
                                style: subRegular.copyWith(fontSize: 10),
                              ),
                              Text(
                                "Abdul Aziz Permana",
                                style: subRegular.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          onPageChanged: (index, caruselReason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList
                          .map(
                            (item) => Container(
                              child: Container(
                                margin: const EdgeInsets.all(5.0),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(item,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Layanan Kami',
                  style: subHeading.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic_1.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Vaksinasi',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic2.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Obat',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic3.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Konsultasi',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic4.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Ambulan',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic5.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lokasi RS',
                              style: subRegular.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic6.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('DokterKu',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/ic7.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('Inapanku',
                                style: subRegular.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          // enableDrag: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return SingleChildScrollView(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                color: whiteColor,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/line_sheet.png',
                                      height: 4,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Image.asset('assets/images/banner.png'),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Wrap(
                                      spacing: 25,
                                      runSpacing: 25,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic_1.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Vaksinasi',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic2.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Obat',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic3.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Konsultasi',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic4.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Ambulan',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic5.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Lokasi RS',
                                                  style: subRegular.copyWith(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic6.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('DokterKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic7.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('InapanKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic8.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('ImunKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic9.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('RontgenKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic11.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('Kontrol',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic10.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('ResepKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 9,
                                                  offset: const Offset(1,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/images/ic13.png",
                                                  height: 30,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text('DietKu',
                                                    style: subRegular.copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 9,
                              offset: const Offset(
                                  1, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/more.png",
                              height: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lainnya',
                              style: subRegular.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Artikel Kesehatan',
                      style: subHeading.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 9,
                        offset:
                            const Offset(1, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/news.jpeg",
                        height: 50,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tips Sehat Selama Pandemi',
                            style: subHeading.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Meningkatnya kasus aktif Covid-19 yang diperparah\n dengan peralihan musim yang saat ini terjadi.....',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subHeading.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
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
