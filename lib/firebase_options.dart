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
    apiKey: 'AIzaSyCcr3iYGxYr5N-fR185DSzIlMNvTIS632I',
    appId: '1:695867178364:web:67c98ac4e1e46c014a78f9',
    messagingSenderId: '695867178364',
    projectId: 'n2flutter-4e49c',
    authDomain: 'n2flutter-4e49c.firebaseapp.com',
    storageBucket: 'n2flutter-4e49c.firebasestorage.app',
    measurementId: 'G-1E7VMD09Q0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_YVdRdEpb6v0NkdzdxQBe8ZuLu1QaHQw',
    appId: '1:695867178364:android:95d4ebe852ae9c724a78f9',
    messagingSenderId: '695867178364',
    projectId: 'n2flutter-4e49c',
    storageBucket: 'n2flutter-4e49c.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCcr3iYGxYr5N-fR185DSzIlMNvTIS632I',
    appId: '1:695867178364:web:d3a34cba2e34647c4a78f9',
    messagingSenderId: '695867178364',
    projectId: 'n2flutter-4e49c',
    authDomain: 'n2flutter-4e49c.firebaseapp.com',
    storageBucket: 'n2flutter-4e49c.firebasestorage.app',
    measurementId: 'G-81STD7RHRX',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAInEbGjaAGQ_E6y9Rx7iDsX3mpC7DmLpc',
    appId: '1:695867178364:ios:42fc66c069a70c0e4a78f9',
    messagingSenderId: '695867178364',
    projectId: 'n2flutter-4e49c',
    storageBucket: 'n2flutter-4e49c.firebasestorage.app',
    iosBundleId: 'com.example.androidstudio',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAInEbGjaAGQ_E6y9Rx7iDsX3mpC7DmLpc',
    appId: '1:695867178364:ios:42fc66c069a70c0e4a78f9',
    messagingSenderId: '695867178364',
    projectId: 'n2flutter-4e49c',
    storageBucket: 'n2flutter-4e49c.firebasestorage.app',
    iosBundleId: 'com.example.androidstudio',
  );

}