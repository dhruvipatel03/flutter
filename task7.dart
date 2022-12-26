import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task7 extends StatefulWidget {
  const task7({super.key});

  @override
  State<task7> createState() => _task7State();
}

class _task7State extends State<task7> {
  TextEditingController num1 = TextEditingController();

  var number = 0;
  var status;
  int i = 2;

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
        ElevatedButton(
            onPressed: (() {
              setState(() {
                number = int.parse(num1.text);
                for (int i = 2; i <= number; i++);
                if (number % i == 0) {
                  status = "it is not a prime number";
                } else {
                  status = "it is a prime number";
                }
              });
            }),
            child: Text("Ans : $number")),
        SizedBox(height: 50),
        Container(
          child: Text("status: $status"),
        )
      ],
    ));
  }
}
