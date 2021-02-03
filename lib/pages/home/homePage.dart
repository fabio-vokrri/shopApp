import 'package:flutter/material.dart';

// HomePage components
import 'components/customAppBar.dart';
import 'components/customBody.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomBody(),
    );
  }
}
