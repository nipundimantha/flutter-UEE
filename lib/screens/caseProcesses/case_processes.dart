import 'package:flutter/material.dart';

import 'components/body.dart';

class CaseProcesses extends StatelessWidget {
  static String routeName = "/caseProcesses";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Case Processes'),
      ),
      body: Body(),
    );
  }
}
