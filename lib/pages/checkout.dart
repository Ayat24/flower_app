import 'package:flutter/material.dart';
import 'package:flutter_appl/model/item.dart';
import 'package:flutter_appl/shared/colors.dart';
import 'package:flutter_appl/shared/appbar.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("checkout screen"),
        actions: [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: Carttt.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(Carttt.selectedProducts[index].name),
                        subtitle: Text(
                            "${Carttt.selectedProducts[index].price} - ${Carttt.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              Carttt.selectedProducts[index].imgPath),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              Carttt.delete(Carttt.selectedProducts[index]);
                            },
                            icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
