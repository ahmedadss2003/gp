// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDyqntF-EIYq5Wm1YwcSrDlfUcumVQY-gQ',
    appId: '1:489189404876:web:62c1f32f5b9f40d778d269',
    messagingSenderId: '489189404876',
    projectId: 'flutter-auth-6ad01',
    authDomain: 'flutter-auth-6ad01.firebaseapp.com',
    storageBucket: 'flutter-auth-6ad01.appspot.com',
    measurementId: 'G-HJ0BGHYQDC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7pbvFhMugBiKb00bVACvoL9yZFJLQX1c',
    appId: '1:489189404876:android:468ce2227b2ba98478d269',
    messagingSenderId: '489189404876',
    projectId: 'flutter-auth-6ad01',
    storageBucket: 'flutter-auth-6ad01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLwSpdHVV5bc8fYbvGnWDOAvGZB7an0GQ',
    appId: '1:489189404876:ios:1b12dfe1aae0fc9b78d269',
    messagingSenderId: '489189404876',
    projectId: 'flutter-auth-6ad01',
    storageBucket: 'flutter-auth-6ad01.appspot.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLwSpdHVV5bc8fYbvGnWDOAvGZB7an0GQ',
    appId: '1:489189404876:ios:1b12dfe1aae0fc9b78d269',
    messagingSenderId: '489189404876',
    projectId: 'flutter-auth-6ad01',
    storageBucket: 'flutter-auth-6ad01.appspot.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDyqntF-EIYq5Wm1YwcSrDlfUcumVQY-gQ',
    appId: '1:489189404876:web:2be1403a16b93ef078d269',
    messagingSenderId: '489189404876',
    projectId: 'flutter-auth-6ad01',
    authDomain: 'flutter-auth-6ad01.firebaseapp.com',
    storageBucket: 'flutter-auth-6ad01.appspot.com',
    measurementId: 'G-9VB555ZLS3',
  );
}
