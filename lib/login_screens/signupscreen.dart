import 'package:catering_app/login_screens/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super .key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _isHidden=true;


  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validateContactNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your contact number';
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Please enter a valid 10-digit contact number';
    }
    return null;
  }
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter confirm your password';
    } else if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,

        );
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,

        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginscreen()),
        );
      } catch (e) { 
        print('Error creating account: $e');
      }
    } else {
      print("Form is not valid");
    }
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(200),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Sign Up',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5, bottom: 5),
              child: TextFormField(
                controller: _nameController,
                validator: _validateName,

                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange.shade800,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade800, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Name',
                  suffixIcon: Icon(Icons.contact_page_outlined),
                  suffixIconColor: Colors.orange.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: TextFormField(

                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: _validateEmail,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange.shade800,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade800, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email_outlined),
                  suffixIconColor: Colors.orange.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: TextFormField(

                validator: _validateContactNumber,
                controller: _contactNumberController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange.shade800,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade800, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Phone number',
                  suffixIcon: Icon(Icons.contact_phone_outlined),
                  suffixIconColor: Colors.orange.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: TextFormField(
                obscureText: _isHidden,
                controller: _passwordController,
                validator: _validatePassword,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.orange.shade800,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade800, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Password',
                  suffixIcon:GestureDetector(
                    onTap:
                    _togglePasswordView,
                    child: Icon(
                      _isHidden
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                    ),
                  ),
                  suffixIconColor: Colors.orange.shade800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: TextFormField(
                obscureText: _isHidden,
                controller: _confirmPasswordController,
                validator: _validateConfirmPassword,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange.shade800,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade800, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Confirm password',
                  suffixIconColor: Colors.orange.shade800,
                  suffixIcon: GestureDetector(
                    onTap:
                    _togglePasswordView,
                    child: Icon(
                      _isHidden
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                    ),
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 40),
                    backgroundColor: Colors.orange.shade800,
                    foregroundColor: Colors.white),
                onPressed: _submitForm,
                child: Text(
                  'Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 88.0),
              child: Row(
                children: [
                  Text('Already a member?'),
                  TextButton(
                    onPressed: () {},
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 15, color: Colors.orange.shade800),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
