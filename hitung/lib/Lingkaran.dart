// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({super.key});

  @override
  State<LingkaranPage> createState() => _LingkaranPage();
}

class _LingkaranPage extends State<LingkaranPage> {
  final txtJariJari = TextEditingController();

  String txtHasil = '';

  // ignore: non_constant_identifier_names
  HitungLuas() {
    setState(() {
      var jarijari = int.parse(txtJariJari.text);
      const x = 22;
      const y = 7;
      var luas = x / y * jarijari * jarijari;
      txtHasil = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas LINGKARAN'),
        backgroundColor: Color.fromARGB(255, 44, 83, 137)
      ),
      backgroundColor: Colors.teal,
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text(
                      'Masukkan JARI - JARI LINGKARAN',
                      style: TextStyle(fontSize: 22),
                    ),
                    TextFormField(
                      controller: txtJariJari,
                      autocorrect: true,
                      decoration:
                          const InputDecoration(hintText: 'Masukan Jari-jari'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: HitungLuas,
                child: const Text(
                  'Hitung',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Text(
                      'HASIL : $txtHasil',
                      style: const TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
