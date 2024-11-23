import 'package:facebook/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 3,),
            const Icon(
              Icons.facebook,
              color: Colors.white,
              size: 80,
            ),
            const Spacer(flex: 1,),
            const TextField(
              decoration: InputDecoration(
                hintText: "Gmail or Phone",
                hintStyle: TextStyle(color: Colors.white60, fontSize: 20),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white30),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const TextField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white60, fontSize: 20),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white30),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>HomeScreen()),);
              },
              child: Text(
                "LOG IN",
                style: TextStyle(fontSize: 20, color: Colors.white54),
              ),
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15,),
                  backgroundColor: Color.fromRGBO(78, 104, 160, 1),
              ),
            ),
            const Spacer(flex: 2),
            const Center(
                child: Text(
              "Sign up for Facebook",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              "Forget Password?",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
