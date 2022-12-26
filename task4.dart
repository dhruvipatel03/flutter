import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task4 extends StatefulWidget {
  const task4({super.key});

  @override
  State<task4> createState() => _task4State();
}

class _task4State extends State<task4> {
  TextEditingController cow = TextEditingController();
  TextEditingController pig = TextEditingController();
  TextEditingController chicken = TextEditingController();
  var total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: cow,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter no of cow",
            ),
          ),
          TextField(
            controller: pig,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " Enter no of pig",
            ),
          ),
          TextField(
            controller: chicken,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " Enter noS of chicken",
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                total = int.parse(pig.text) * 4 +
                    int.parse(chicken.text) * 4 +
                    int.parse(cow.text) * 2;
              });
            }),
            child: Text("click"),
          ),
          SizedBox(height: 20),
          Text("Ans is"),
          Text("$total"),
        ],
      ),
    );
  }
}
