import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Text
              // Text(
              //   'EVENT \nMANAGEMENT APP',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     fontSize: 28,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black87,
              //   ),
              // ),
              SizedBox(height: 20),
              // Logo Image
              Image.asset(
                'parva.png', // Path to your image asset
                height: 350, // Adjust size as needed
                width: 350,
              ),
              SizedBox(height: 20),
              // Subtext
              Text(
                'Login or sign Up for more features',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 30),
              // Log In Button
              ElevatedButton(
                onPressed: () {
                  // Log In button functionality
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, // Background color
                  minimumSize: Size(double.infinity, 50), // Full width button
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Sign Up Button
              OutlinedButton(
                onPressed: () {
                  // Sign Up button functionality
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Full width button
                  side: BorderSide(color: Colors.blueAccent), // Border color
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
