import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task3 extends StatefulWidget {
  const task3({super.key});

  @override
  State<task3> createState() => _task3State();
}

TextEditingController num = TextEditingController();

var num1 = 0;
var factorial = 1;
var temp;

class _task3State extends State<task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: num,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "enter any num:",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    temp = factorial;
                    int num1 = int.parse(num.text);
                    for (int i = 1; i <= num1; i++) {
                      var factorial = 1;
                      temp = temp * i;
                    }
                  });
                },
                child: Text("Click")),
            Text("$factorial"),
          ],
        ),
      ),
    );
  }
}
