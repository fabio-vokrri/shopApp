import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
  final formKey;
  CustomForm({@required this.formKey});
}

class _CustomFormState extends State<CustomForm> {
  final nameController = TextEditingController();
  final mailController = TextEditingController();

  @override
  void initState() {
    nameController.addListener(() {});
    mailController.addListener(() {});
    super.initState();
  }

  final exp = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
    caseSensitive: false,
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            validator: (value) {
              if (value.isEmpty)
                return 'Please enter your Name';
              else
                return null;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              errorStyle: TextStyle(fontSize: 15),
              labelText: 'Name & Surname',
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: mailController,
            validator: (value) {
              if (value.isEmpty)
                return 'Please enter your email';
              else if (exp.hasMatch(value))
                return 'Please enter a valid E-mail';
              else
                return null;
            },
            decoration: InputDecoration(
              icon: Icon(Icons.mail_rounded),
              errorStyle: TextStyle(fontSize: 15),
              labelText: 'Email',
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    mailController.dispose();
    super.dispose();
  }
}

// r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$"
