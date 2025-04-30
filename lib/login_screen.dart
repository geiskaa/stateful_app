import 'package:applicatin/component/custom_button.dart';
import 'package:applicatin/component/custom_textfield.dart';
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
  bool tampilPassword = true;

  showPassword() {
    setState(() {
      tampilPassword = !tampilPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
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
              CustomTextfield(
                controller: emailcontroller,
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
              ),
              CustomTextfield(
                obscureText: tampilPassword,
                controller: passwordcontroler,
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
              SizedBox(height: 10.0),
              CustomButton(
                text: 'Show Password',
                onPressed: () {
                  showPassword();
                },
              ),
              SizedBox(height: 50.0),
              CustomButton(
                text: 'Log In',
                backgroundColor: const Color.fromARGB(255, 125, 104, 160),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: const Text('Sign Up')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
