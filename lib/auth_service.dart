// //import 'dart:js_interop';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// // class AuthService extends ChangeNotifier {
// //   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// //   Future<UserCredential>signInWithEmailAndPassword{
// //     String email, String password

// //   }
// // }
// class AuthService extends ChangeNotifier {
//   // Firebase Authentication instance
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   /// Signs in a user with email and password.
//   ///
//   /// Throws a [FirebaseAuthException] if sign in fails.
//   Future<UserCredential> signInWithEmailAndPassword({
//     required email,
//     required String password,
//   }) async {
//     try {
//       UserCredential userCredential =
//           await _firebaseAuth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       throw Exception(e.code);
//     }
//   }

//   //new user
//   Future<UserCredential> signUpWithEmailAndPassword({
//     required email,
//     required String password,
//   }) async {
//     try {
//       UserCredential userCredential =
//           await _firebaseAuth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential;
//     } on FirebaseAuthException catch (e) {
//       throw Exception(e.code);
//     }
//   }
// }
