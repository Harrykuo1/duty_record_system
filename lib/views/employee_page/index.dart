import 'package:flutter/material.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Page"),
        centerTitle: true,
      ),
    );
  }
}