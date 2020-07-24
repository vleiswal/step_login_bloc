import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
            emailField(),
            SizedBox(height: 10),
            passwordField(),
            SizedBox(height: 20),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return StreamBuilder<String>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email Address',
              errorText: snapshot.error,
            ),
            onChanged: bloc.changeEmail,
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder<String>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Must be at least 5 characters',
              labelText: 'Password',
              errorText: snapshot.error,
            ),
            onChanged: bloc.changePassword,
          );
        });
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
