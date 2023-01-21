// ignore: file_names
import 'package:flutter/material.dart';


class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROFILE'),
        backgroundColor: Color.fromARGB(255, 159, 90, 233)
      ),
        backgroundColor: Color.fromARGB(255, 152, 100, 215),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/bana.jpg'),
            ),
            const Text(
              'Ahmad Sya Bana',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'BOS MINYAK',
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 20, 23, 23),
                ),
                title: Text(
                  '2010020035',
                  style: TextStyle(
                      color:Color.fromARGB(255, 20, 23, 23),
                      
                      fontSize: 20.0),
                ),
              ),
              
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.room_preferences_outlined,
                ),
                title: Text(
                  '5A SI NON REG BJB',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 20, 23, 23),
                      ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                ),
                title: Text(
                  '+62 8969 1075 040',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 17, 22, 21),
                      ),
                ),
              ),
            ),
            
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.maps_home_work,
                ),
                title: Text(
                  'Jl.Martapura Lama, Des.Tangkas',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 15, 17, 17),
                      ),
                ),
              ),
            ),
          ],
        )),
      
    );
  }
}