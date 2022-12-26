import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Area extends StatefulWidget {
  const Area({super.key});

  @override
  State<Area> createState() => _AreaState();
}

class _AreaState extends State<Area> {
  TextEditingController base = TextEditingController();
  TextEditingController height = TextEditingController();
  var area;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: base,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " enter base",
            ),
          ),
          TextField(
            controller: height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: " enter height",
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                area = 0.5 * int.parse(base.text) * int.parse(height.text);
              });
            }),
            child: Text("click"),
          ),
          SizedBox(height: 20),
          Text("Ans is"),
          Text("$area"),
        ],
      ),
    );
  }
}
