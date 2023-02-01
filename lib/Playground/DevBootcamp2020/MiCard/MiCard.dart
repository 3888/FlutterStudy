import 'package:flutter/material.dart';

class miCard extends StatelessWidget {
  miCard({Key? key}) : super(key: key);

  final avatarIcon = const CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage("images/meditate.jpeg"),
  );

  final fullName = const CircleAvatar(
      radius: 50.0, backgroundImage: AssetImage("images/meditate.jpeg"));

  final name = const Text(
    'Avatar name',
    style: TextStyle(
      fontFamily: 'Pacifico',
      fontSize: 40.0,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  );

  final position = Text('Flutter dev'.toUpperCase(),
      style: const TextStyle(
          fontSize: 25.0,
          fontFamily: 'Rowdies',
          color: Colors.red,
          letterSpacing: 2.5));

  final divider = const SizedBox(
    height: 20.0,
    width: 150.0,
    child: Divider(color: Colors.black),
  );

  final cardPhone = Card(
    color: Colors.white,
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: ListTile(
      leading: const Icon(
        Icons.phone,
        color: Colors.teal,
      ),
      title: Text(
        '+123456789',
        style: TextStyle(
          color: Colors.teal.shade900,
          fontFamily: 'Source Sans Pro',
          fontSize: 20.0,
        ),
      ),
    ),
  );

  final cardEmail = Card(
    color: Colors.white,
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: ListTile(
      leading: const Icon(
        Icons.email,
        color: Colors.teal,
      ),
      title: Text(
        'some@mail.com',
        style: TextStyle(
          color: Colors.teal.shade900,
          fontFamily: 'Source Sans Pro',
          fontSize: 20.0,
        ),
      ),
    ),
  );

  final cardAddress = Card(
    color: Colors.white,
    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: ListTile(
      leading: const Icon(
        Icons.location_city,
        color: Colors.teal,
      ),
      title: Text(
        'City, Street, Country',
        style: TextStyle(
          color: Colors.teal.shade900,
          fontFamily: 'Source Sans Pro',
          fontSize: 18.0,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              avatarIcon,
              fullName,
              position,
              divider,
              cardPhone,
              cardEmail,
              cardAddress,
            ],
          ),
        ),
      ),
    );
  }
}
