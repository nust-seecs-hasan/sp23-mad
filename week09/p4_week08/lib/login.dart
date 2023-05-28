import 'package:flutter/material.dart';
import 'stopwatch.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoggedIn = false;
  String _name;
  String _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Continue."),
      ),
      body: Center(
        child: isLoggedIn ? _buildSuccess():_buildLoginForm(),
      ),
    );
  }
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Widget _buildSuccess() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hello"),
      ],
    );
  }
  _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Runner Name'),
                validator: (text) =>
                    text.isEmpty ? 'Enter the runner\'s name.' : null,
            ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Runner Email'),
                validator: (text) {
                  if (text.isEmpty) {
                    return 'Enter the runner\'s email.';
                  }
                  final regex = RegExp('[^@]+@[^\.]+\..+');
                  if (!regex.hasMatch(text)) {
                        return 'Enter a valid email';
                }
                return null;
                }
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: _onPressed,
                  child: Text('Continue . .')
              )
            ],
          ),
      ),
    );
  }

  void _onPressed() {
    final form = _formKey.currentState;
    if(!form.validate()){
      return;
    }
    setState(() {
      isLoggedIn = true;
      _name = _nameController as String;
      _email = _emailController as String;
    });
  }
}