import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/theme.dart';

class ApplyPage extends StatelessWidget {
  const ApplyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Riwayat Pendaftaran',
                  style: subHeadingPage.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic_1.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'RSUD Hasan Sadikin',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/apply.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic3.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'Online',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/yellow.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic6.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'Jl. Jaya Dinata No. 61.',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/red.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic4.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'RSUD AMC',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/red.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic7.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'RSUD Al Ihsan',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/yellow.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ic10.png',
                            width: 50,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdul Aziz Permana',
                                style: blackReguler,
                              ),
                              Text(
                                '3204271610008765',
                                style: subHeading.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: primaryColor,
                                    size: 15,
                                  ),
                                  Text(
                                    'Jl. Jaya Dinata No. 61.',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                'assets/images/apply.png',
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
