import 'package:flutter/material.dart';
import 'package:elearning/Screens/authentication/login_Screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordObscured = true;  // For password visibility
  bool _isConfirmPasswordObscured = true;  // For confirm password visibility

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true, // Prevent bottom overflow
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/logocut.png",
                  height: 180,
                  width: 160,
                  color: Colors.blue.shade800,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please enter your details to continue learning.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(height: 20),
              // Full Name Field
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Email Field
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email ID',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blueAccent,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              // Password Field
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordObscured = !_isPasswordObscured;
                      });
                    },
                  ),
                ),
                obscureText: _isPasswordObscured,
              ),
              SizedBox(height: 20),
              // Confirm Password Field
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordObscured = !_isConfirmPasswordObscured;
                      });
                    },
                  ),
                ),
                obscureText: _isConfirmPasswordObscured,
              ),
              SizedBox(height: 30),
              // Register Button
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent.shade700,
                      Colors.blue.shade500,
                      Colors.lightBlueAccent.shade200,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle registration logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                    ],
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
