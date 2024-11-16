import 'package:flutter/material.dart';

import '../widgets/staff_body.dart';

class StaffPage extends StatelessWidget {
  final String name;

  const StaffPage({super.key, required this.name});

  static Route<dynamic> route(String name) => MaterialPageRoute<dynamic>(
      builder: (_) => StaffPage(name: name),
    );

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(child: StaffBody(name: name)),
    );
}
