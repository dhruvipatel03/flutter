import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class task1 extends StatefulWidget {
  const task1({super.key});

  @override
  State<task1> createState() => _task1State();
}

class _task1State extends State<task1> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var value1;
  var value2;

  var status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 200),
        TextField(
          controller: email,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              label: Text("Email"),
              hintText: 'Enter valid email'),
        ),
        SizedBox(height: 20),
        TextField(
          controller: password,
          obscureText: true,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              label: Text("Password"),
              hintText: 'Enter your secure password'),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 50),
            backgroundColor: Color.fromARGB(255, 54, 121, 56),
          ),
          onPressed: () {
            setState(() {
              value2 = int.parse(password.text);

              if (value1 == "dhruvi" && value2 == "30") {
                status = "welcome";
              } else {
                status = "error";
              }
            });
          },
          child: Text("LOGIN", style: TextStyle(fontSize: 20)),
        ),
        Text("status:$status"),
      ],
    ));
  }
}
