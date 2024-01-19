import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyForm();
  }
}

class _MyForm extends State<MyForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // TextFormField(
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     icon: Icon(Icons.apps),
          //     hintText: 'Enter Application Type',
          //     labelText: 'Application Type',
          //   ),
          // ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.person),
              hintText: 'Enter User Id',
              labelText: 'User Id',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.lock_open),
              hintText: 'Enter Password',
              labelText: 'Password',
            ),
          ),

          // new Container(
          //     padding: const EdgeInsets.only(left: 150.0, top: 40.0),
          //     child: new RaisedButton(
          //       child: const Text('Submit'),
          //         onPressed: null,
          //     )),
        ],
      ),
    );
  }
}
