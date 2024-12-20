import 'package:flutter/material.dart';
import 'package:homeapp/screens/house_1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == "test@example.com" && password == "123456") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => House1()),
      );
    } else {
      // Invalid credentials
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Invalid email or password!"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pic.png"),
                  ),
                ),
              ),
              Text(
                "Login To Your Account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: handleLogin,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  minimumSize: MaterialStateProperty.all(
                    Size(300, 50),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Forgot the password?",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                "or continue with",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        "assets/images/fb.png",
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 30,
                      width: 30,
                      child: Image.asset("assets/images/google.png"),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/Apple-Logo.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text("Don't have an account? Signup"),
            ],
          ),
        ),
      ),
    );
  }
}
