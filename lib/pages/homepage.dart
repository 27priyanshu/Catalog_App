import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final int days = 25;
  final String name = "Priaynshu singh";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of code with $name"),
          ),
        ),
      drawer: Drawer(),
      )
      ;
  }
}