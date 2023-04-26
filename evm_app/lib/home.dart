import 'package:evm_app/screenNavigation.dart';
import 'package:flutter/material.dart';
import 'gallery_camera.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 48.0,
                      bottom: 10.0,
                      right: 10.0,
                      left: 10.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFFD1FAFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Voting \nStarts in:",
                          style: TextStyle(fontSize: 40),
                        ),
                        // IconButton(
                        //   icon: const Icon(Icons.arrow_forward),
                        //   onPressed: () {
                        //     // navigation code to next page goes here
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const GalleryCamera()),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 2.0,
                      bottom: 84.0,
                      right: 5.0,
                      left: 10.0,
                    ),
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 137, 179, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Get \nVerified",
                          style: TextStyle(fontSize: 35),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            // navigation code to next page goes here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreenContainer()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 2.0,
                      bottom: 84.0,
                      right: 10.0,
                    ),
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 158, 145),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 5.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text("Vote \nCast",
                            style: TextStyle(fontSize: 35)),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            // navigation code to next page goes here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GalleryCamera()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -70),
              child: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(28.0),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 80.0,
                  right: 80.0,
                  //bottom: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Name \nConstituency \nVerified/Not Verified",
                      style: TextStyle(fontSize: 22),
                    ),
                    // IconButton(
                    //   icon: const Icon(Icons.arrow_forward),
                    //   onPressed: () {
                    //     // navigation code to next page goes here
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const GalleryCamera()),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class landingpage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Landing Page',
//       home: Scaffold(
//         body: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     height: 240,
//                     color: Colors.yellow,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     color: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     color: Colors.pink,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     color: Colors.purple,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //use this controller to get what the user typed
//   final _textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _textController,
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 labelText: 'Enter CNIC Number',
//                 suffixIcon: IconButton(
//                   onPressed: () {
//                     _textController.clear();
//                   },
//                   icon: const Icon(Icons.clear),
//                 ),
//               ),
//             ),
//             MaterialButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const GalleryCamera()),
//                   );
//                 },
//                 color: Colors.white,
//                 child: const Text('Enter')
//                 //style: TextStyle(color: Colors.black)
//                 //),
//                 ),
//           ],
//         ),
//       ),
//     );
//     // body: const Center(
//     //   // Center is a layout widget. It takes a single child and positions it
//     //   // in the middle of the parent.
//     //   child: Text('Electronic Voting App\nBased on Blockchain',
//     //       style: TextStyle(fontSize: 24)),
//     // ),
//   }
// }
