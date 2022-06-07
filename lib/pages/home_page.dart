import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("This is my first app with $days"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
