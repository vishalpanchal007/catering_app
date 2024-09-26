import 'package:catering_app/login_screens/Loction_screen.dart';
import 'package:catering_app/login_screens/forgetpassword.dart';
import 'package:catering_app/login_screens/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  String  userEmail='';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  bool _isHidden=true;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[a-zA-Z  0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
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

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );

        // User has been created successfully, now sign in
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );


        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Locationscreen(),),
          
        );
        print("login successful");
      } catch (e) {
        // Handle errors here (e.g., display error message)
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
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text('Login',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 50, bottom: 5),
              child: TextFormField(
                validator: _validateEmail,
                controller: _emailController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.orange.shade800,
                    ),),
                    suffixIconColor: Colors.orange.shade600,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange.shade800, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email_outlined)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: TextFormField(
                validator: _validatePassword,
                controller: _passwordController,
                obscureText: _isHidden,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.orange.shade800,
                    ),), suffixIconColor: Colors.orange.shade600,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.orange.shade800, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Password',

                    suffixIcon: GestureDetector(
                      onTap:
                      _togglePasswordView,
                      child: Icon(
                        _isHidden
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                      ),
                    ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Forgetscreen(),
                      ),);
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 40),
                    backgroundColor: Colors.orange.shade800,
                    foregroundColor: Colors.white),
                onPressed: _submitForm,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              fit: StackFit.loose,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.180,
                      height: MediaQuery.of(context).size.width/100*17,

                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFA7700),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          signInWithGoogle();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Locationscreen(),
                              ),);
                        },
                        child:
                            Image.asset(fit: BoxFit.cover, 'assets/Google.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.180,
                      height: MediaQuery.of(context).size.width/100*17,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFFA7700),
                        ),
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.orange.shade800
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _loginWithFacebook();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Locationscreen(),));
                        },
                        child:
                            Image.asset(fit: BoxFit.cover, 'assets/Facebook.png'),
                      ),

                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 88.0,top: 20),
              child: Row(
                children: [
                  Text('Not yet a member.'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signupscreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 15, color: Colors.orange.shade800),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    print("loginsuccesfull");
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,

    );
    return await FirebaseAuth.instance.signInWithCredential(credential);

  }
  Future<void> _loginWithFacebook() async {

    try {
      // Trigger the sign-in flow
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        // Create a credential from the access token
        final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken!.token);

        // Once signed in, return the UserCredential
        final UserCredential userCredential =
        await _auth.signInWithCredential(facebookAuthCredential);

        print('Login successful. Firebase UID: ${userCredential.user!.uid}');
      }
    } catch (e) {
      print('Facebook sign-in failed: $e');
    }
  }

}
