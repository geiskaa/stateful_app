import 'package:applicatin/profile_screen.dart';
import 'package:flutter/material.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  bool tampilPassword =
      true; 

  showPassword() {
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'LOG IN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                'Please log in to your account !',
                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(255, 90, 89, 89),
                ),
              ),
              SizedBox(height: 25.0),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                obscureText:
                    tampilPassword, 
                controller: passwordcontroler,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      showPassword();
                    },
                    icon: Icon(
                      tampilPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  showPassword(); 
                },
                child: Text('Show Password'),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Text('Log In', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 125, 104, 160),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}