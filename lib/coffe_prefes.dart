import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';
// import 'package:flutter/rendering.dart';

class CoffePrefers extends StatefulWidget {
  const CoffePrefers({super.key});

  @override
  State<CoffePrefers> createState() => _CoffePrefersState();
}

class _CoffePrefersState extends State<CoffePrefers> {
  int strength = 1;
  int sugar = 0;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Coffe: ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            Text('$strength'),
            
            for (int i = 0; i < strength; i++)
              const Image(
                image: AssetImage('assets/img/coffeSeed_2.jpg'),
                width: 20,
                color: Colors.white,
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(
                width: 52,
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            ),
          ],
        ),
        const Divider(
          color: Colors.brown,
        ),
        Row(
          children: [
            const Text(
              'Sugar: ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            Text('$sugar '),

            if(sugar == 0)
              const Text('Sugar is zero'),

            for (int i = 0; i < sugar; i++)
              const Image(
                image: AssetImage('assets/img/1_cube.jpg'),
                width: 25,
                color: Colors.white30,
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(
                width: 52,
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
          ],
        ),
        
      ],
      
    );
  }
}

class BuyMe extends StatelessWidget {
  const BuyMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FloatingActionButton(
        onPressed: null,
        child: Text('waiting'),
      ),
    );
  }
}
