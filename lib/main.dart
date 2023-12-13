import 'package:flutter/material.dart';

import 'my_card.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  final String linkedInProfilePicture =
      'https://media.licdn.com/dms/image/D4D03AQEm1kCkiF0n2w/profile-displayphoto-shrink_200_200/0/1695578444860?e=1707955200&v=beta&t=1d8E_nmeCPsZMbUZy4H4op9UXX57EZqjTeqeo6OYCiw';
  final List<Shadow> textShadows = [
    const Shadow(
      color: Color.fromRGBO(0, 0, 0, 1.0),
      offset: Offset.zero,
      blurRadius: 10.0,
    )
  ];
  final List<BoxShadow> boxShadows = [
    BoxShadow(
        blurRadius: 10,
        color: Colors.grey.shade100,
        spreadRadius: 5,
        offset: Offset(0, 70))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: boxShadows,
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(linkedInProfilePicture),
                ),
              ),
              Text(
                'Felipe Campelo',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  shadows: textShadows,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  color: Colors.white,
                  fontSize: 24.0,
                  letterSpacing: 6.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
                height: 75,
                child: Divider(),
              ),
              MyCard(leadingIcon: Icons.phone, titleText: '(31) 9 7113 - 6097'),
              MyCard(leadingIcon: Icons.mail, titleText: 'fecfo@icloud.com'),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
