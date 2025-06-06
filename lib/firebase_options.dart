// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD9R3aeFi0Pn3M1RF1yS4u-TlnYL6Fnnms',
    appId: '1:747340851225:web:93e64ea99fa5a6fda6a288',
    messagingSenderId: '747340851225',
    projectId: 'gsc-project-ea7e2',
    authDomain: 'gsc-project-ea7e2.firebaseapp.com',
    storageBucket: 'gsc-project-ea7e2.firebasestorage.app',
    measurementId: 'G-HE688HNE40',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVXpPNzhuvePGDv4pnrek6cV-dijWtpyg',
    appId: '1:747340851225:android:1b78ff21fb3201dea6a288',
    messagingSenderId: '747340851225',
    projectId: 'gsc-project-ea7e2',
    storageBucket: 'gsc-project-ea7e2.firebasestorage.app',
  );
}
