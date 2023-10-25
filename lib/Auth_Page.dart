import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fchat/login_page.dart';
import 'home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return HomePage(
                // provider: [
                //EmailProviderConfiguration(),
                //GoogleProviderConfiguration(),            ]
                );
          }

          // user is NOT logged in
          else {
            return LoginPage();
          }
        },
      ),
    );
  }
}

// class GoogleProviderConfiguration {
//   const GoogleProviderConfiguration(Set<String> set, 
    
//    {clientId = "357836312212-o4d2t86lc047f2vobq1c7uudjfuo2jm1.apps.googleusercontent.com"}
// )
  
// };
