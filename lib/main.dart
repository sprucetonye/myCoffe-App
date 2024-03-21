import 'package:facebook/coffe_prefes.dart';
import 'package:facebook/homepage.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.brown,
//           centerTitle: true,
//           title: const Text('welcome to Coffe Shop'),
//         ),
//         body: const HomePage(),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    const MaterialApp(
      // home: HomePage(),
      home: HomePage(),
    ),
  );
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text(
            'SandBox',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(
                255,
                139,
                0,
                0,
              ),
            ),
          ),
        ),
        body: const BuyMe (),
        ),
        // Center(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Container(
        //         height: 200,
        //         color: Colors.amber[100],
        //         child: const Text('checking...'),
        //       ),
        //     ],
        //   ),
        // ),
      
    );
  }
}
