import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAqRtf3ZMvdHNepPMG2UPYdCccFCjl5NYU",
            authDomain: "deneme-5656b.firebaseapp.com",
            projectId: "deneme-5656b",
            storageBucket: "deneme-5656b.appspot.com",
            messagingSenderId: "651494760105",
            appId: "1:651494760105:web:c01a32022f1aea4571d3b8",
            measurementId: "G-B2FS8DKTG7"));
  } else {
    await Firebase.initializeApp();
  }
}
