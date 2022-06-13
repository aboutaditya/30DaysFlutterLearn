import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:flutter_application_1/widget/item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 2));
    var json = await rootBundle.loadString("assets/files/catalog.json");
    var decodejson = jsonDecode(json);
    var productJson = decodejson["product"];
    catalogModel.items =
        List.from(productJson).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: (catalogModel.items != null && catalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemCount: catalogModel.items.length,
              itemBuilder: (context, index) {
                final item = catalogModel.items[index];
                return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: GridTile(
                        header: Container(
                          padding: const EdgeInsets.all(12),
                          decoration:
                              const BoxDecoration(color: Colors.deepPurple),
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        footer: Container(
                            padding: const EdgeInsets.all(12),
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            child: Text(
                              "\$${item.price}",
                              style: TextStyle(color: Colors.white),
                            )),
                        child: Image.network(item.iurl)));
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
    );
  }
}
