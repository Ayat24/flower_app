import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("ali Hassan",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
              accountEmail: Text("ali@yahoo.com"),
              currentAccountPictureSize: Size.square(99),
              currentAccountPicture: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/img/ali.jpg")),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 141, 95),
        title: Text("Home"),
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
    );
  }
}
