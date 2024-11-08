import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDIoNz-KOdrOLGvqFJc5ANEmGnC7zxkNoE",
            authDomain: "pi-ii-dyxwj0.firebaseapp.com",
            projectId: "pi-ii-dyxwj0",
            storageBucket: "pi-ii-dyxwj0.appspot.com",
            messagingSenderId: "584958897724",
            appId: "1:584958897724:web:44862b7a56bc8ce1541d39"));
  } else {
    await Firebase.initializeApp();
  }
}
