import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task6 extends StatefulWidget {
  const task6({super.key});

  @override
  State<task6> createState() => _task6State();
}

class _task6State extends State<task6> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  var sum = 0;
  var status;
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
                  if (int.parse(num1.text) == 10 ||
                      int.parse(num2.text) == 10 ||
                      sum == 10) {
                    status = "TRUE";
                  } else {
                    status = "FALSE";
                  }
                });
              }),
              child: Text("Ans:$sum")),
          SizedBox(height: 20),
          Container(
            child: Text("status:$status"),
          )
        ],
      ),
    );
  }
}
