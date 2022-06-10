import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:flutter_application_1/widget/item_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    final dummyList = List.generate(4, (index) => catalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
      drawer: const MyDrawer(),
    );
  }
}
