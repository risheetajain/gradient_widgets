import 'package:flutter/material.dart';

import 'constants/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List text = ['Gradient CheckBox'];
List routers = [checkBox];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, routers[index]);
          },
          child: Container(
            color: Colors.green,
            height: 100,
            child: Center(
              child: Text(
                text[index],
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      },
      itemCount: text.length,
    ));
  }
}
