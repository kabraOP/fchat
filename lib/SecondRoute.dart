import 'package:fchat/View1page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SecondRoute extends StatelessWidget {
  final Employee employeeInfo;
  const SecondRoute({super.key, required this.employeeInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Container(
                  //   // decoration: BoxDecoration(
                  //   //     color: Colors.white,
                  //   //     borderRadius: BorderRadius.circular(70)),
                  //   alignment: Alignment.topCenter,
                  //   height: 250,
                  //   width: 250,
                  //   child: Card(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(180.0)),
                  //     elevation: 5,
                  //     margin: EdgeInsets.all(10),
                  //     child:
                  //         // Image.asset('images/direct.png', fit: BoxFit.contain),
                  //         Image.asset('${employeeInfo.imge}',
                  //             fit: BoxFit.contain),
                  //   ),
                  // ),
                  //
                  // CircleAvatar(
                  //   radius: 125,
                  //   child: Image.asset(
                  //     employeeInfo.imge,
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  Card(
                    margin: EdgeInsets.zero,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(125)),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 250,
                      child: Image.asset(
                        employeeInfo.imge,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                    child: AnimatedTextKit(
                      totalRepeatCount: 2,
                      animatedTexts: [
                        FadeAnimatedText(
                          'Helloo${employeeInfo.name}',
                          textStyle: const TextStyle(
                              backgroundColor: Colors.green,
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold),
                        ),
                        ScaleAnimatedText(
                          'YOU WON 2LAKH ',
                          duration: Duration(milliseconds: 4000),
                          textStyle: const TextStyle(
                              color: Colors.indigo,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Text("Hello ${employeeInfo.name}"
            //     "apko milthe ha 2 lakh rupe"),
            //     SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp1()),
                );
              },
              child: const Text("go back"),
            ),
            // Expanded(
            //   child: Card(
            //     child: Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Text("Hello ${employeeInfo.name}"
            //               "apko milthe ha 2 lakh rupe"),
            //           ElevatedButton(
            //             onPressed: () {
            //               Navigator.pop(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => const MyApp()),
            //               );
            //             },
            //             child: const Text("go back"),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      //child: const Text("go back"),
    );
  }
}
