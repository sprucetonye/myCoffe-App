import 'package:facebook/coffe_prefes.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.brown[400],
            title: const Text(
              'My Coffe Mix',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(20),
                child: const Text('How I want my Coffe served ...'),
              ),
              Container(
                // color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const CoffePrefers(),
              ),
              Expanded(
                child: Image.asset(
                  'assets/img/coffe_shop_logo.jpg',
                  fit: BoxFit.fitWidth, alignment: Alignment.center,
                ),
              ),
            ],
          )),
    );
  }
}
