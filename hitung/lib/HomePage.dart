// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage'), backgroundColor: Color.fromARGB(255, 34, 42, 91)),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.all(5.0)),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/PersegiPage');
            },
            child: Card(
              color: const Color.fromARGB(22, 0, 0, 0),
              child: Row(
                children: const [
                  Icon(
                    Icons.square,
                    color: Colors.white,
                    size: 72.0,
                  ),
                  Text(
                    'Hitung Luas Persegi',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/LingkaranPage');
            },
            child: Card(
              color: const Color.fromARGB(22, 0, 0, 0),
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    size: 72.0,
                    color: Color.fromARGB(255, 37, 45, 100),
                  ),
                  Text(
                    'Hitung Luas Lingkaran',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(5.0)),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/ProfilPage');
            },
            child: Card(
              color: const Color.fromARGB(22, 0, 0, 0),
              child: Row(
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 72.0,
                  ),
                  Text(
                    'Profil Developer',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
