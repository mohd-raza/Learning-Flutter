import 'package:firstapp/models/catalog.dart';
import 'package:firstapp/widgets/drawer.dart';
import 'package:firstapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      4,
      (index) => CatalogModel.items[0],
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
