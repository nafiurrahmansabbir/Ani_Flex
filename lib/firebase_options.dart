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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZyjLVt99ihNAosNPB9ymBJWU_d4zP784',
    appId: '1:862330690956:android:6e6a2710d86143a76acaa9',
    messagingSenderId: '862330690956',
    projectId: 'ani-flex',
    storageBucket: 'ani-flex.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0CCKRPJMUvG55Xcgqr9TFFi9Rot8uR18',
    appId: '1:862330690956:ios:ee85480781f4f32b6acaa9',
    messagingSenderId: '862330690956',
    projectId: 'ani-flex',
    storageBucket: 'ani-flex.firebasestorage.app',
    iosBundleId: 'com.example.aniFlex',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAbLVKJJEv1C1DCPWYNoOzWjStEuqdZEX0',
    appId: '1:862330690956:web:11d568199bfa8ee86acaa9',
    messagingSenderId: '862330690956',
    projectId: 'ani-flex',
    authDomain: 'ani-flex.firebaseapp.com',
    storageBucket: 'ani-flex.firebasestorage.app',
    measurementId: 'G-Z1ZFM4SYPR',
  );

}