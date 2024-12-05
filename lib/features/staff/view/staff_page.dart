import 'package:flutter/cupertino.dart';

import '../widgets/staff_body.dart';

class StaffPage extends StatelessWidget {
  final String name;

  const StaffPage({super.key, required this.name});

  static Route<dynamic> route(String name) => CupertinoPageRoute<dynamic>(
        builder: (_) => StaffPage(name: name),
      );

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBackground,
        navigationBar: CupertinoNavigationBar(
          middle: Text(name),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        child: SafeArea(
          child: StaffBody(name: name),
        ),
      );
}
