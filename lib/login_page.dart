// //import 'dart:html';import 'package:firebase_auth/firebase_auth.dart';
import 'package:fchat/registorpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fchat/components/sq_tile.dart';
import 'package:fchat/components/my_button.dart';
import 'package:fchat/components/my_text_field.dart';
//import 'package:fchat/components/sq_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  bool isShowLoader = false;

  // sign user in method
  signUserIn() async {
    //show loading circle
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return const Center(
    //       child: CircularProgressIndicator(
    //         color: Colors.black,
    //       ),
    //     );
    //   },
    // );
    setState(() {
      isShowLoader = true;
    });

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // pop the loading circle
      // Navigator.pop(context);
      setState(() {
        isShowLoader = false;
      });
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      // if (mounted) {
      // Navigator.pop(context);
      // WRONG EMAIL
      setState(() {
        isShowLoader = false;
      });
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        // show error to user
        showError();
      }

      // WRONG PASSWORD
      // else if (e.code == 'wrong-password') {
      //   // show error to user
      //   showError(msg: "Wrong Password");
      // }

      else {
        showError(msg: "Something went wrong!");
      }
      // debugPrint("Firebase " + (e.message ?? ""));
    }
  }

  showError({String? msg}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              msg ?? 'Invalid Credentials',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong email message popup
  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  // wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              'Incorrect Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,

      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: isShowLoader
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50),

                        // logo
                        const Icon(
                          Icons.security,
                          size: 100,
                        ),

                        const SizedBox(height: 50),

                        // welcome back, you've been missed!
                        Text(
                          'Welcome back you\'ve been missed!',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
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

                        // forgot password?
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        // sign in button
                        MyButton(
                          chalo: () => signUserIn(),
                        ),

                        const SizedBox(height: 50),

                        // or continue with
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'Or continue with',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
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
                              SquareTile(imagePath: 'images/google.png'),

                              SizedBox(width: 25),

                              // apple button
                              SquareTile(imagePath: 'images/apple.png')
                            ],
                          ),
                        ),

                        // const SizedBox(height: 25),

                        // not a member? register now
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member?',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              // const SizedBox(width: 4),
                              TextButton(
                                onPressed: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  ),
                                },
                                child: const Text(
                                  'Register now',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

// import 'package:fchat/components/my_button.dart';
// import 'package:fchat/components/my_text_field.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {

//   final emailController= TextEditingController();
//   final PasswordController= TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body:SafeArea(

//         child:Center(

//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 25.0),
//             child: Column(
//             children: [
//                           SizedBox(height: 100 ,),

//             //logo
//             Icon(Icons.message,
//             size: 100,),

//             //welcome back message

//             Text("welcome back ", style: TextStyle(fontSize: 16),),
//                                       SizedBox(height: 30 ,),

//             //email field
//             MyTextField(controller: emailController, hintText: 'email', obscureText: false),
//                                       SizedBox(height: 10 ,),

//             //pass
//              MyTextField(controller: PasswordController, hintText: 'pass', obscureText: true),
//                                        SizedBox(height: 10 ,),
//                                        Spacer(),

//              //MyTextField(controller: Conformpasscontroller, hintText: 'conform pass', obscureText: true)
//              Container(
//               child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.end,

//                 children: [
//                   MyButton(chalo: (){}, text: 'LOGIN'),
//                 ],
//               )),
//                                       // SizedBox(height: 20 ,),

//              const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("not a member koi baat nehi"),
//                 SizedBox(width: 5,),
//                 Text(
//                   "aajao karva denge ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 )
//               ],
//              )

//             //button sign in
//                 ],),
//           ),
//         )
//     ),);
//   }
// }
