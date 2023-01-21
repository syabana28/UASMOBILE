// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key});

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final txtpanjang = TextEditingController();
  final txtLebar = TextEditingController();


  String txtHasil = '';

  // ignore: non_constant_identifier_names
  HitungLuas() {
    setState(() {
      var panjang = int.parse(txtpanjang.text);
      // ignore: non_constant_identifier_names
      var Lebar = int.parse(txtLebar.text);
      var luas = panjang * Lebar;
      txtHasil = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hitung Luas PERSEGI'),
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
                      'Masukkan Panjang Sisi',
                      style: TextStyle(fontSize: 22),
                    ),
                    TextFormField(
                      controller: txtpanjang,
                      autocorrect: true,
                      decoration:
                          const InputDecoration(hintText: 'Panjang'),
                    ),
                    const SizedBox(
              height: 30,
            ),
                    TextFormField(
                      controller: txtLebar,
                      autocorrect: true,
                      decoration:
                          const InputDecoration(hintText: 'Lebar'),
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
