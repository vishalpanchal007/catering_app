import 'package:catering_app/login_screens/verficationsuccess.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Forgetscreen extends StatefulWidget {
  @override
  _ForgetscreenState createState() => _ForgetscreenState();
}

class _ForgetscreenState extends State<Forgetscreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(200)
            )
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: Text('Forgot Your Password?',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
            child: TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixText: "+91",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange.shade800)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.orange.shade800, width: 2,),
                    borderRadius: BorderRadius.circular(10)),
                // border: OutlineInputBorder(),
                hintText: 'Enter Mobile number',
                suffixIcon: Icon(Icons.phone_outlined),
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
            ),
          ),
          Visibility(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
              child: TextFormField(
                maxLength: 6,
                keyboardType: TextInputType.number,
                controller: otpController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange.shade800)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.orange.shade800, width: 2,),
                      borderRadius: BorderRadius.circular(10)),
                  // border: OutlineInputBorder(),
                  hintText: 'OTP',
                ),
              ),
            ),
            visible: otpVisibility,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange.shade800,
              foregroundColor: Colors.white,
              fixedSize: Size(200, 50 )
            ),
            onPressed: () {
              if (otpVisibility) {
                verifyOTP();
              } else {
                loginWithPhone();
              }
            },
            child: Text(
              otpVisibility ? "Verify" : "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),


    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+91" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
          (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
          () {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Verificationsuccess(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            msg: "your login is failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}