//import 'dart:html';

//import 'dart:html';
//import 'package:scratcher/scratcher.dart';

import 'package:fchat/CallLogpage.dart';
import 'package:fchat/SecondRoute.dart';
//import 'package:fchat/contacs.dart';
import 'package:flutter/material.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

// void main() {
//   //debugPaintSizeEnabled = true;
//   runApp(MaterialApp( home:MyApp()));
// }

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});
  // hel(context){
  //  showDialog(
  //                   context: context,
  //                   builder: (_) => const AlertDialog(
  //                     title: Text("ASHAMBHAVVVVVVVVV"),
  //                     content: Text("2 lakhhh "),),);
  //  }

  // }
  // hel(BuildContext context){
  //  const AlertDialog alert = AlertDialog(  title: Text("taped"),
  //  //content: Text("this is check kar "),
  //  );
  //  //print("tap ho rah ah a");

  //   showDialog(context: context, builder: (context){
  //     return alert;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // Widget titleSection = InkWell(
    //   onTap:() => hel(context),
    // onTap:hel(){
    //   showDialog(
    //               context: context,
    //               builder: (_) => const AlertDialog(
    //                 title: Text("Test"),
    //                 content: Text("Done..!"),),);
    // },
    //   child: Container(
    //   padding: const EdgeInsets.all(32),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         /*1*/
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             /*2*/
    //             Container(
    //               padding: const EdgeInsets.only(bottom: 8),
    //               child: const Text(
    //                 'Vinayak Kabra ',
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //             ),
    //             Text(
    //               '@KabraOP  -Isec',
    //               style: TextStyle(
    //                 color: Colors.grey[500],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       /*3*/
    //       Text(
    //         'Rating',
    //         style: TextStyle(
    //           color: Colors.grey[500],
    //         ),
    //       ),
    //       Icon(
    //         Icons.star,
    //         color: Colors.red[500],
    //       ),
    //       const Text('1'),
    //     ],
    //   ),
    //   ),
    // );

    //  Widget titleSection2 =  InkWell(

    //     onTap:() => hel(context),
    //     child: Container(
    //     padding: const EdgeInsets.all(32),
    //     child: Row(
    //       children: [
    //         Expanded(
    //           /*1*/
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               /*2*/
    //               Container(
    //                 padding: const EdgeInsets.only(bottom: 8),
    //                 child: const Text(
    //                   'Happy Jain ',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //               ),
    //               Text(

    //                 '@Oyehappy  -Isec',
    //                 style: TextStyle(
    //                   color: Colors.grey[500],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         /*3*/
    //         Text(
    //           'Rating',
    //           style: TextStyle(
    //             color: Colors.grey[500],
    //           ),
    //         ),
    //         Icon(
    //           Icons.star,
    //           color: Colors.red[500],
    //         ),
    //         const Text('1'),
    //       ],
    //     ),
    //     ),

    //   );
    //   Widget titleSection3 = InkWell(
    //     onTap:() => hel(context),
    //     child:Container(
    //     //color:Color.fromARGB(255, 172, 193, 201),
    //     padding: const EdgeInsets.all(32),
    //     child: Row(
    //       children: [

    //         Expanded(
    //           /*1*/
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               /*2*/
    //               Container(
    //                 padding: const EdgeInsets.only(bottom: 8),

    //                 child: const Text(
    //                   'Harsh Gandhi ',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //               ),

    //               Text(
    //                 '@harshu -Isec',
    //                 style: TextStyle(
    //                   color: Colors.grey[500],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         /*3*/
    //         Text(
    //           'Rating',
    //           style: TextStyle(
    //             color: Colors.grey[500],
    //           ),
    //         ),
    //         Icon(
    //           Icons.star,
    //           color: Colors.red[500],
    //         ),
    //         const Text('3'),
    //       ],
    //     ),
    //     ),
    //   );

    //    Widget titleSection4 = InkWell(
    //     //child: Ink(height: 100,width: 100,color: Colors.black,),

    //       onTap:() => hel(context),

    //      child: Container(
    //       //material:InkWell(print("hello")),
    //       //color:Color.fromARGB(255, 172, 193, 201),

    //       padding: const EdgeInsets.all(32),

    //        child:Row(
    //         children: [

    //           Expanded(
    //             /*1*/
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 /*2*/
    //                 Container(
    //                   padding: const EdgeInsets.only(bottom: 8),
    //                   child: const Text(
    //                     'Vishal sharma ',
    //                     style: TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                 ),
    //                 Text(
    //                   '@bffpranay -Isec',
    //                   style: TextStyle(
    //                     color: Colors.grey[500],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           /*3*/
    //           Text(
    //             'Rating',
    //             style: TextStyle(
    //               color: Colors.grey[500],
    //             ),
    //           ),
    //           Icon(
    //             Icons.star,
    //             color: Colors.red[500],
    //           ),
    //           const Text('3'),
    //         ],
    //       ),
    //       ),
    //        );

    List<Employee> employeeData = [
      Employee(
          name: 'Vinayak Kabra',
          username: "@KabraOP   -ISEC",
          ratings: 1,
          imge: "images/vkk.png"),
      Employee(
          name: 'Vishal Sharma',
          username: "@harshi   -ISEC",
          ratings: 2,
          imge: "images/profile.png"),
      Employee(
          name: 'Harsh Gandhi',
          username: "@bffpranay   -ISEC",
          ratings: 3,
          imge: "images/profile.png"),
      Employee(
          name: 'Happy Jain',
          username: "@Oyehappy   -ISEC",
          ratings: 4,
          imge: "images/image0.jpeg"),
      Employee(
          name: 'Pretham naruna',
          username: "@adlenbrother   -ISEC",
          ratings: 3,
          imge: "images/profile.png"),
      Employee(
          name: 'Adleen naruna',
          username: "@prethambrother   -ISEC",
          ratings: 3,
          imge: "images/profile.png"),
      Employee(
          name: 'Yash Jain',
          username: "@Yesmam   -ISEC",
          ratings: 2,
          imge: "images/profile.png"),
    ];

    employeeData.sort((a, b) => a.ratings.compareTo(b.ratings));

    List<Map<String, dynamic>> actions = [
      {"title": "Call", "icon": Icons.call, "redirectTo": CallLogScreen()},
      {
        "title": "Book",
        "icon": Icons.book,
      },
      {
        "title": "Share",
        "icon": Icons.share,
        "redirectTo": SecondRoute(
          employeeInfo: Employee(
              name: "name",
              username: "username",
              ratings: 4,
              imge: "images/vk.png"),
        )
      },
    ];

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
            actions.length,
            (index) => InkWell(
                  onTap: () {
                    index == 1
                        ? FlutterContactPicker.pickFullContact()
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    actions[index]["redirectTo"]),
                          );
                  },
                  child: _buildButtonColumn(color, actions[index]["icon"],
                      actions[index]["title"].toString()),
                )).toList());

    /*Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        "he is a very hardworking guy , always availabe for new challanges"
        "and delivered all the task on time .",
        softWrap: true,
      ),
    );*/

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Year End EMP's Performance"),
        ),
        body: Column(
          children: [
            // Image.asset(
            //   "images/img.png",
            //   width: 600,
            //   height: 120,
            //   fit: BoxFit.contain,
            //   alignment: Alignment.center,
            // ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: employeeData.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => {
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text("Hello ${employeeData[index].name}"),
                          content: Text("Congrats YOU DID IT "),
                        ),
                      ),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondRoute(employeeInfo: employeeData[index])),
                      ),
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 32),
                        child: Row(
                          children: [
                            Expanded(
                              /*1*/
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /*2*/
                                  Container(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      employeeData[index].name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    employeeData[index].username,
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /*3*/
                            Text(
                              'Rating ',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                            Row(
                              children: List.generate(
                                  employeeData[index].ratings,
                                  (index) => Icon(
                                        Icons.star,
                                        color: Colors.red[500],
                                      )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buttonSection,
          ],
        ),
      ),
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class Employee {
  String name;
  String username;
  int ratings;
  String imge;
  Employee(
      {required this.name,
      required this.username,
      required this.ratings,
      required this.imge});
}
