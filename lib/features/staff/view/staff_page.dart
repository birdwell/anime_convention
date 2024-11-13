import 'package:flutter/material.dart';

import '../widgets/staff_body.dart';

class StaffPage extends StatelessWidget {
  final String name;

  const StaffPage({super.key, required this.name});

  static Route<dynamic> route(String name) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => StaffPage(name: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(child: StaffView(name: name)),
    );
  }
}

class StaffView extends StatelessWidget {
  final String name;

  const StaffView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return StaffBody(name: name);
  }
}
