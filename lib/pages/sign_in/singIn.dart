import 'package:flutter/material.dart';

import 'components/customAppBar.dart';

class SignInPage extends StatelessWidget {
  static const routeName = 'signInPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
    );
  }
}
