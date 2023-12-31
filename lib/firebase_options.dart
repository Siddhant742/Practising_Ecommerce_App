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
    apiKey: 'AIzaSyAFmK6onr-hu1cEvliHk7mJtA-P7mDAjC0',
    appId: '1:882649312491:web:82503d97e15c41dc5be2ae',
    messagingSenderId: '882649312491',
    projectId: 'learning-ecommerce-app',
    authDomain: 'learning-ecommerce-app.firebaseapp.com',
    storageBucket: 'learning-ecommerce-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSu9Cyf02C2V8sFJWsEFmIrzq89ir8oSw',
    appId: '1:882649312491:android:6104727660d9c1195be2ae',
    messagingSenderId: '882649312491',
    projectId: 'learning-ecommerce-app',
    storageBucket: 'learning-ecommerce-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa8wBAqhwlYotrQ4SXjZDO4xMZeO_7zgA',
    appId: '1:882649312491:ios:897028f1912d9cae5be2ae',
    messagingSenderId: '882649312491',
    projectId: 'learning-ecommerce-app',
    storageBucket: 'learning-ecommerce-app.appspot.com',
    iosClientId: '882649312491-o7vc7glh21vs84tb1sod80gao2r4lcfc.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceEcommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa8wBAqhwlYotrQ4SXjZDO4xMZeO_7zgA',
    appId: '1:882649312491:ios:a34ee1b0931d18a55be2ae',
    messagingSenderId: '882649312491',
    projectId: 'learning-ecommerce-app',
    storageBucket: 'learning-ecommerce-app.appspot.com',
    iosClientId: '882649312491-cumnca1cjv6gtd1qglg95rqr7e7riass.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceEcommerce.RunnerTests',
  );
}
