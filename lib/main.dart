import 'package:fchat/Auth_Page.dart';
// import 'package:fchat/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:watch_app/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  Future<void> initializeApp() async {
    await Future.delayed(
        Duration(seconds: 3)); // Simulate loading for 3 seconds
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.amber,
        body: FutureBuilder(
          future: initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Loading is complete, display your app content.
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: const AuthPage(),
              );
            } else {
              // While loading, display custom loading text.
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      //debugShowCheckedModeBanner: false,
    );
  }
}



// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:LoginPage(),
//       );
  
//   }
// }

 