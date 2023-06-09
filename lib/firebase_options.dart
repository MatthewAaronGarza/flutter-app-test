// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAVPhdiNIcG3jYQcHA6pjq1K584cvTzz3Q',
    appId: '1:211962383209:web:68abf61fa01120ed83cbf8',
    messagingSenderId: '211962383209',
    projectId: 'my-first-flutter-project-26b93',
    authDomain: 'my-first-flutter-project-26b93.firebaseapp.com',
    storageBucket: 'my-first-flutter-project-26b93.appspot.com',
    measurementId: 'G-KVXD2CR4HM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZTVkg5flm4sYHyhkAJbH3CW4JwJUrfUU',
    appId: '1:211962383209:android:b90113a61f0b892783cbf8',
    messagingSenderId: '211962383209',
    projectId: 'my-first-flutter-project-26b93',
    storageBucket: 'my-first-flutter-project-26b93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBoJlwb1hKIqmCObGzW95kpzsjQyIT1cHQ',
    appId: '1:211962383209:ios:2fc5b5ef53f6653883cbf8',
    messagingSenderId: '211962383209',
    projectId: 'my-first-flutter-project-26b93',
    storageBucket: 'my-first-flutter-project-26b93.appspot.com',
    iosClientId: '211962383209-kr2bbsglcqpt34esfba0ufe5br75cb52.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAppTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBoJlwb1hKIqmCObGzW95kpzsjQyIT1cHQ',
    appId: '1:211962383209:ios:2fc5b5ef53f6653883cbf8',
    messagingSenderId: '211962383209',
    projectId: 'my-first-flutter-project-26b93',
    storageBucket: 'my-first-flutter-project-26b93.appspot.com',
    iosClientId: '211962383209-kr2bbsglcqpt34esfba0ufe5br75cb52.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAppTest',
  );
}
