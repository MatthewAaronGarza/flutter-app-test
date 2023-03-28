import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My First Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter Project'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Perform login action
                },
                child: const Text('Login'),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(200, 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  )
                )
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  // Perform register action
                },
                child: Text('Register'),

                  style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(180, 40)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
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


final FirebaseAuth _auth = FirebaseAuth.instance;

Future<String?> signUpWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    User? user = userCredential.user;
    return user?.uid;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      return 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      return 'The account already exists for that email.';
    }
    return e.message;
  } catch (e) {
    return 'Error: $e';
  }
}
