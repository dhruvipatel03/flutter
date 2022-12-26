import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task2 extends StatefulWidget {
  const task2({super.key});

  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  TextEditingController num = TextEditingController();
  var convert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: num,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " enter minutes",
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                convert = int.parse(num.text) * 60;
              });
            }),
            child: Text("click"),
          ),
          SizedBox(height: 20),
          Text("In Seconds"),
          Text("$convert"),
        ],
      ),
    );
  }
}
