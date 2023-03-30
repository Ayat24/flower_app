// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_appl/model/item.dart';
import 'package:flutter_appl/pages/details_screen.dart';
import 'package:flutter_appl/shared/colors.dart';
import "package:flutter_appl/provider/cart.dart";
import 'package:flutter_appl/shared/appbar.dart';
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imgPath)),
                      ),
                    ]),
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing:
                          Consumer<Cart>(builder: ((context, Carttt, child) {
                        return IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {
                              Carttt.add(items[index]);
                            },
                            icon: Icon(Icons.add));
                      })),

                      leading: Text("\$12.99"),

                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/img/ali.jpg")),
                    accountEmail: Text("ali@yahoo.com"),
                    accountName: Text("ali Hassan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by Ali Hassan © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Consumer<Cart>(builder: ((context, classInstancee, child) {
             ProductsAndPrice()  })),
          ],
          backgroundColor: appbarGreen,
          title: Text("Home"),
        ));
  }
}
