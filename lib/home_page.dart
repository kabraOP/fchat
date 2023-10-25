//import 'package:fchat/Auth_Page.dart';
import 'package:fchat/View1page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // HomePage({super.key, required List<GoogleProviderConfiguration> provider});

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp1()),
            );
          },
          child: Text(
            "LOGGED IN AS: ${FirebaseAuth.instance.currentUser!.email ?? ""}",
            style: TextStyle(fontSize: 20),
          ),
        ),
        //child:
      ),
    );
  }
}

// ignore: empty_constructor_bodies
// class GoogleProviderConfiguration {

//   const GoogleProviderConfiguration(

//    {clientId = "357836312212-o4d2t86lc047f2vobq1c7uudjfuo2jm1.apps.googleusercontent.com"}
// )
// }
