import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


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
