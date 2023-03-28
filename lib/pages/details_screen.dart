import 'package:flutter/material.dart';
import 'package:flutter_appl/shared/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Details screen"),
        leading: Text("data"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    child: Container(
                        child: Text(
                          "8",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset("assets/img/2.webp"),
          Text("details"),
        ],
      ),
    );
  }
}
