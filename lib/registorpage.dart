//import 'package:fchat/components/my_button.dart';
//import 'dart:js';

import 'package:fchat/auth_service.dart';
import 'package:fchat/components/my_button.dart';
import 'package:fchat/components/my_text_field.dart';
import 'package:fchat/components/sq_tile.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;
  RegisterPage({Key? key, this.onTap}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformpasswordController = TextEditingController();
  // @override
  // State<RegisterPage>createState()=> _RegistorPageState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//     throw UnimplementedError();
//   }

// }
//  class _RegistorPageState extends State<RegistorPage>{

//   final emailController = TextEditingController();
//     final passwordController = TextEditingController();
//     final conformpasswordController = TextEditingController();

// void singUp() async{
//   if(passwordController.text != conformpasswordController.text){
//     ScaffoldMessenger.of(context).showSnackBar(
//        const SnackBar(content: Text("password not same"),
//        ),
//     );
//     return;
//   }
//   //get auth service
//   final authService = Provider.of<AuthService>(context,listen: false);
//   try{
//     await authService.signUpWithEmailAndPassword(
//       emailController.text,
//       passwordController.text,
//     );
//   } catch(e)
//   {
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text(e.toString()),),
//     );
//     }

//   }

// }

    // @override
    // Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  const SizedBox(height: 25),

                  // email textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),

                  MyTextField(
                    controller: conformpasswordController,
                    hintText: 'CPassword',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  MyButton(
                    chalo: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    text: 'Sign UP',
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pop(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => LoginPage()),
                  //     );

                  //     Container(
                  //       padding: EdgeInsets.all(25),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(50),
                  //         color: Colors.black,
                  //       ),
                  //       child: Center(
                  //         child: Text("sign UP",
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 20)),
                  //       ),
                  //     );
                  //   },
                  //   child: const Text('Sign UP '),
                  // ),
                  const SizedBox(height: 50),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  // google + apple sign in buttons
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // google button
                        SquareTile(
                          imagePath: 'images/122.png',
                        ),

                        SizedBox(width: 25),

                        // apple button
                        SquareTile(imagePath: 'images/apple.png')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
