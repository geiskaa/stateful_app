import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool gantibackground = true;
  Color backgroundcolor = const Color.fromARGB(255, 206, 195, 223);
  changebackground() {
    setState(() {
      backgroundcolor =
          backgroundcolor == const Color.fromARGB(255, 255, 231, 160)
              ? const Color.fromARGB(255, 172, 217, 255)
              : const Color.fromARGB(255, 255, 231, 160);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/profile_icon.jpg'),
            ),
            Text(
              'Welcome Back !',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('Every Day Is A Chance To Grow', style: TextStyle()),
            SizedBox(height: 180.0),
            ElevatedButton(
              onPressed: () {
                changebackground();
              },
              child: Text('Change Background'),
            ),
          ],
        ),
      ),
    );
  }
}
