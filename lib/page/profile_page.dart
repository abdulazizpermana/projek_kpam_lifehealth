import 'package:flutter/material.dart';
import 'package:projek_kpam_lifehealth/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pic.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abdul Aziz Permana',
                          style: blackReguler.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text(
                              'Terverifikasi',
                              style: subHeading.copyWith(fontSize: 12),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Image.asset(
                              'assets/images/check.png',
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Pengaturan Akun',
                  style: subRegular.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 238, 217, 241),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Username',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'abdulazizpermana16',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'abdulazizpermana16@gmail.com',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.contact_mail,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NIK',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '3204272707888902',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.cake,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tanggal Lahir',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '16/10/2000',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.male,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jenis Kelamin',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Laki-laki',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.house,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alamat',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Cikancung, Bandung',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.map,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tempat Lahir',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Bandung',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No Handphone',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '085256787652',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_sharp,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Password',
                                    style: subHeading.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    '*********',
                                    style: blackReguler.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Pengaturan',
                  style: subRegular.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 238, 217, 241),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pengaturan Notifikasi',
                                style: subHeading.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Belum Diatur',
                                style: blackReguler.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pengaturan Privasi',
                                style: subHeading.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Belum Diatur',
                                style: blackReguler.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bahasa',
                                style: subHeading.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Indonesia',
                                style: blackReguler.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pusat Bantuan',
                                style: subHeading.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '(022) 800067',
                                style: blackReguler.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/lineee.png',
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kebijakan Aplikasi',
                                style: subHeading.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Berdasarkan UUD45',
                                style: blackReguler.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 51,
                  width: 400,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: primaryColor,
                    onPressed: () {},
                    child: Text(
                      'Ubah Profile',
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
