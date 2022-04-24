import 'package:flutter/material.dart';
import 'package:firebase_testing/validation.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = "Clinical ERP System";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
// Create a global key that uniquely identifies the Form widget
// and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
// Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Patient Name',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your age',
              labelText: 'Patient Age',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your E-mail',
              labelText: 'Patient E-mail',
            ),
            validator: FieldValidator.validateEmail,
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Patient Contact',
            ),
            validator: FieldValidator.validatePhone,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.remove_red_eye_sharp),
              hintText: 'Enter your password',
              labelText: 'Password',
            ),
            validator: FieldValidator.validatePassword,
          ),
          Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Scaffold.of(context).showSnackBar(
                        const SnackBar(content: Text('Data Submitted Successfully')));
                  }
                },
              )),
        ],
      ),
    );
  }
}