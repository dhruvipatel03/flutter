import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task5 extends StatefulWidget {
  const task5({super.key});

  @override
  State<task5> createState() => _task5State();
}

class _task5State extends State<task5> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  var sum = 0;
  var status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 20),
        TextField(
          controller: num1,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("enter num1"),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          controller: num2,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("enter num2"),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: (() {
              setState(() {
                sum = int.parse(num1.text) + int.parse(num2.text);

                if (sum < 100) {
                  status = "true";
                } else {
                  status = "false";
                }
              });
            }),
            child: Text("Ans : $sum")),
        SizedBox(height: 50),
        Container(
          child: Text("status: $status"),
        )
      ],
    ));
  }
}
