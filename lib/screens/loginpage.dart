import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light mint green background color
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Make AppBar blend with background
        // title: Text('Login Page', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0), // Spacing at the top
                // Image Banner at the Top
                Image.asset(
                  'reva_logo.png', // Path to your image asset
                  height: 300, // Adjust the size as needed
                  width: 300,
                ),
                // SizedBox(height: 0),
                // Text(
                //   'ENTER YOUR USERNAME AND PASSWORD',
                //   style: TextStyle(
                //     fontSize: 18,
                //     color: Colors.black,
                //   ),
                // ),
                SizedBox(height: 20),
                // Username TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // Password TextField
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                // Remember Me and Forgot Password Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value:
                              false, // Set default value or use a stateful widget
                          onChanged: (value) {},
                        ),
                        Text("Remember Me"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Forgotten password action
                      },
                      child: Text(
                        'Forgotten password?',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Log In Button
                ElevatedButton(
                  onPressed: () {
                    // Log In button functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    minimumSize: Size(double.infinity, 50), // Full width button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                // // OR Divider
                // Text(
                //   'OR',
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: Colors.grey[700],
                //   ),
                // ),
                // SizedBox(height: 20),
                // // Google Login Button
                // OutlinedButton.icon(
                //   onPressed: () {
                //     // Google login functionality
                //   },
                //   style: OutlinedButton.styleFrom(
                //     minimumSize: Size(double.infinity, 50),
                //     backgroundColor: Colors.white,
                //     side: BorderSide(color: Colors.grey[300]!),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // icon: Image.asset(
                //   'assets/google_logo.png', // Make sure to add this image to your assets
                //   height: 24,
                //   width: 24,
                // ),
                // label: Text(
                //   'Log in with your Google account',
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: Colors.black87,
                //   ),
                // ),
                //),
                SizedBox(height: 20),
                // Sign Up Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? "),
                    GestureDetector(
                      onTap: () {
                        // Sign Up navigation action
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50), // Spacing at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}
