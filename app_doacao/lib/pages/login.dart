import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final FirebaseAuth userAuth = FirebaseAuth.instance;

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[300], body: _body(context));
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: ListView(
          children: <Widget>[
            _sizedBox(10.0),
            _logo('logo.png'),
            _sizedBox(50.0),
            _textFormField(
              "E-mail",
              controller: emailController,
            ),
            _sizedBox(10.0),
            _textFormField(
              "Password",
              password: true,
              controller: passwordController,
            ),
            _sizedBox(50.0),
            _loginButton("Login", context),
          ],
        ),
      ),
    );
  }

  _logo(String logo) {
    return Image.asset(
      logo,
    );
  }

  _sizedBox(double value) {
    return SizedBox(
      height: value,
    );
  }

  _textFormField(String label,
      {bool password = false, TextEditingController controller}) {
    return TextFormField(
      cursorColor: Colors.grey[700],
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey[600],
        ),
        hoverColor: Colors.grey[100],
        fillColor: Colors.grey[100],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: (1.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
            width: (2.0),
          ),
        ),
      ),
    );
  }

  _loginButton(String text, BuildContext context) {
    return RaisedButton(
        color: Colors.red[900],
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        textColor: Colors.white,
        onPressed: () {
          _loginUser();
        });
  }

  _alertDialog(String title, String body) {
    return AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        FlatButton(
          child: Text("Fechar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Future<FirebaseUser> _loginUser() async {
    String _email = emailController.text;
    String _password = passwordController.text;
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.pushNamed(context, "/home");
    } catch (error) {
      throw new AuthException(error.code, error.message);
    }
  }
}
