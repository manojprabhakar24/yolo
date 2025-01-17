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
    apiKey: 'AIzaSyAnzPBBNnOzSpiKkrj0_sI3OS7uPSYotmU',
    appId: '1:902227146832:web:15213d6054b35d2d31f955',
    messagingSenderId: '902227146832',
    projectId: 'yolo-8ee92',
    authDomain: 'yolo-8ee92.firebaseapp.com',
    storageBucket: 'yolo-8ee92.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKqgEk1eS24X6u6IYnIEsCzsN9p1avRyY',
    appId: '1:902227146832:android:fcd6fb8cff6dea4d31f955',
    messagingSenderId: '902227146832',
    projectId: 'yolo-8ee92',
    storageBucket: 'yolo-8ee92.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAqnJU6d0jGYVpx5erZE4hYZa2VAhGJMLg',
    appId: '1:902227146832:ios:e9867b0f16948d5231f955',
    messagingSenderId: '902227146832',
    projectId: 'yolo-8ee92',
    storageBucket: 'yolo-8ee92.firebasestorage.app',
    iosBundleId: 'com.example.yolo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAqnJU6d0jGYVpx5erZE4hYZa2VAhGJMLg',
    appId: '1:902227146832:ios:e9867b0f16948d5231f955',
    messagingSenderId: '902227146832',
    projectId: 'yolo-8ee92',
    storageBucket: 'yolo-8ee92.firebasestorage.app',
    iosBundleId: 'com.example.yolo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAnzPBBNnOzSpiKkrj0_sI3OS7uPSYotmU',
    appId: '1:902227146832:web:1113599a79289b9a31f955',
    messagingSenderId: '902227146832',
    projectId: 'yolo-8ee92',
    authDomain: 'yolo-8ee92.firebaseapp.com',
    storageBucket: 'yolo-8ee92.firebasestorage.app',
  );
}
