import 'package:flutter/material.dart';

class CatatanPage extends StatefulWidget {
  const CatatanPage({Key? key}) : super(key: key);

  @override
  State<CatatanPage> createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: const Text('Fitur Belum Tersedia'),
          ),
        ],
      ),
    );
  }
}
