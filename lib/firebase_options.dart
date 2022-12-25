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
    apiKey: 'AIzaSyDqmOseoBMKwP15CFYMGtXUtqC7CUT1bYQ',
    appId: '1:242239434832:web:87aad34f6ba3cc2c3b6155',
    messagingSenderId: '242239434832',
    projectId: 'whatsappclone-14f5e',
    authDomain: 'whatsappclone-14f5e.firebaseapp.com',
    storageBucket: 'whatsappclone-14f5e.appspot.com',
    measurementId: 'G-16KBDD4EQT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsnCZPVelcYUtBHjC1sSeOLwht6wFD5hE',
    appId: '1:242239434832:android:67791a44b82078fe3b6155',
    messagingSenderId: '242239434832',
    projectId: 'whatsappclone-14f5e',
    storageBucket: 'whatsappclone-14f5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC--_P2ppIgtsNNfIWwL_OACe51gtQA45w',
    appId: '1:242239434832:ios:083d342dc426eed63b6155',
    messagingSenderId: '242239434832',
    projectId: 'whatsappclone-14f5e',
    storageBucket: 'whatsappclone-14f5e.appspot.com',
    iosClientId: '242239434832-94blp8o1n9j67ouv32il2fh5adqu2m53.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappclonw',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC--_P2ppIgtsNNfIWwL_OACe51gtQA45w',
    appId: '1:242239434832:ios:083d342dc426eed63b6155',
    messagingSenderId: '242239434832',
    projectId: 'whatsappclone-14f5e',
    storageBucket: 'whatsappclone-14f5e.appspot.com',
    iosClientId: '242239434832-94blp8o1n9j67ouv32il2fh5adqu2m53.apps.googleusercontent.com',
    iosBundleId: 'com.example.whatsappclonw',
  );
}
