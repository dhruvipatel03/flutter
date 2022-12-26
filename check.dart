import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  var sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: num1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " enter num",
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: num2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " enter num",
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                sum = int.parse(num1.text) + int.parse(num2.text);
              });
            }),
            child: Text("click"),
          ),
          SizedBox(height: 20),
          Text("$sum"),
        ],
      ),
    );
  }
}
