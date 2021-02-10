import 'package:flutter/material.dart';

import 'components/customAppBar.dart';
import 'components/customButton.dart';
import 'components/customForm.dart';
import 'components/customText.dart';
import 'components/imagePicker.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = 'signUpPage';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImagePicker(),
            SizedBox(height: 20),
            CustomForm(formKey: formKey),
            SizedBox(height: 20),
            CustomText(),
            Spacer(),
            CustomButton(formKey: formKey),
          ],
        ),
      ),
    );
  }
}
