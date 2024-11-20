import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool agreeToTerms = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();

  // Firebase authentication instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Function to handle sign-up logic
  Future<void> _signUp() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (password != confirmPassword) {
      // Password and Confirm Password do not match
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Passwords do not match!"),
        backgroundColor: Colors.red,
      ));
      return;
    }

    try {
      // Create user with email and password
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // You can navigate to the homepage or any other page after successful signup
      Navigator.pushNamed(context, '/login');
    } on FirebaseAuthException catch (e) {
      _showAlertDialog('Error.', e.code as String);
    } catch (e) {
      _showAlertDialog('Error', "An error occurred. Please try again.");
    }
  }

  // Show alert dialog with a given message
  void _showAlertDialog(String title, String message) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10, // Light green background
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Make AppBar blend with background
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Enter your details",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: "Enter your name",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle()),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                      labelText: "Last name",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle()),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: "Email/phone number",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle()),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle()),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: "Confirm password",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle()),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: agreeToTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          agreeToTerms = value ?? false;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text:
                              "By clicking on 'sign up', you're agreeing to the Chunky app ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: " Terms of Service",
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle Terms of Service tap
                                },
                            ),
                            const TextSpan(text: "  and "),
                            TextSpan(
                              text: " Privacy Policy",
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle Privacy Policy tap
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: agreeToTerms ? _signUp : null,
                      child: Text("Sign Up", style: const TextStyle()),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        backgroundColor:
                            const Color.fromARGB(255, 87, 118, 143),
                        // Button color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
