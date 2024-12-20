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
    apiKey: 'AIzaSyA5BaeBss__fy38_IuBmyn_b3J4Th_0n2M',
    appId: '1:283366575328:web:2fd73724811da3f8511485',
    messagingSenderId: '283366575328',
    projectId: 'event-manage-app-1b7e1',
    authDomain: 'event-manage-app-1b7e1.firebaseapp.com',
    storageBucket: 'event-manage-app-1b7e1.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTdHY-XkceEtY0yTeifGM_-ZrBJLaAcfY',
    appId: '1:283366575328:android:3ffe0a5793af6f09511485',
    messagingSenderId: '283366575328',
    projectId: 'event-manage-app-1b7e1',
    storageBucket: 'event-manage-app-1b7e1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKp8nhuynipS8R2e8YljiNGjk2OwLOvU8',
    appId: '1:283366575328:ios:cda6ba74dce31cc7511485',
    messagingSenderId: '283366575328',
    projectId: 'event-manage-app-1b7e1',
    storageBucket: 'event-manage-app-1b7e1.firebasestorage.app',
    iosBundleId: 'com.example.eventManage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKp8nhuynipS8R2e8YljiNGjk2OwLOvU8',
    appId: '1:283366575328:ios:cda6ba74dce31cc7511485',
    messagingSenderId: '283366575328',
    projectId: 'event-manage-app-1b7e1',
    storageBucket: 'event-manage-app-1b7e1.firebasestorage.app',
    iosBundleId: 'com.example.eventManage',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA5BaeBss__fy38_IuBmyn_b3J4Th_0n2M',
    appId: '1:283366575328:web:26c11ed065f3fcf0511485',
    messagingSenderId: '283366575328',
    projectId: 'event-manage-app-1b7e1',
    authDomain: 'event-manage-app-1b7e1.firebaseapp.com',
    storageBucket: 'event-manage-app-1b7e1.firebasestorage.app',
  );

}