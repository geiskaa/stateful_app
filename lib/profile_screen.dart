import 'package:applicatin/component/custom_button.dart';
import 'package:applicatin/component/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'component/card_biodata.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
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
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                child: Text(
                  'Full Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              CardBiodata(text: 'Giska Izzatunnisa'),
              Container(
                width: double.infinity,
                child: Text(
                  'E-mail',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              CardBiodata(text: 'giskaizza@gmail.com'),
              Container(
                width: double.infinity,
                child: Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              CardBiodata(text: '0851 2345 6789'),
              SizedBox(height: 90.0),
              CustomButton(
                text: 'Change Background',
                onPressed: () {
                  changebackground();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
