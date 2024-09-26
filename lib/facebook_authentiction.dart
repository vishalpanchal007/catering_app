import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FacebookLoginScreen extends StatelessWidget {
  Future<void> _loginWithFacebook() async {
    try {
      // Trigger Facebook login
      final LoginResult result = await FacebookAuth .instance.login();
      //print(_loginWithFacebook());
      // Check if the login was successful
      if (result.status == LoginStatus.success) {
        // Retrieve the access token
        final AccessToken? accessToken = result.accessToken;

        // Convert the Facebook ac    cess token to a Firebase credential
        final OAuthCredential credential = FacebookAuthProvider.credential(accessToken!.token);

        // Sign in with Firebase using the Facebook credential
        await FirebaseAuth.instance.signInWithCredential(credential);

        // Navigate to the next screen or perform any necessary actions
      } else {
        print("error");
      }
    } catch (e) {
      // Handle errors
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _loginWithFacebook,
          child: Text('Login with Facebook'),
        ),
      ),
    );
  }
}
