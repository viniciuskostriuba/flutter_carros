// ignore_for_file: prefer_const_constructors

import 'package:carros/pages/home_page.dart';
import 'package:carros/pages/login_api.dart';
import 'package:carros/pages/user.dart';
import 'package:carros/utils/nav.dart';
import 'package:carros/widgtes/app_button.dart';
import 'package:carros/widgtes/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _controllerLogin = TextEditingController();

  final _controllerSenha = TextEditingController();

  final _focusSenha = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppText(
              "Login",
              "Digite o email",
              controller: _controllerLogin,
              validator: _validateLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              nextFocus: _focusSenha,
            ),
            SizedBox(height: 10),
            AppText(
              "Senha",
              "Digite a senha",
              pass: true,
              controller: _controllerSenha,
              validator: _validateSenha,
              textInputAction: TextInputAction.done,
              focusNode: _focusSenha,
            ),
            SizedBox(
              height: 20,
            ),
            AppButton(
              "Login",
              onPressed: _onClickLogin,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onClickLogin() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    String login = _controllerLogin.text;
    String senha = _controllerSenha.text;

    User user = await LoginApi.login(login, senha);

    if (user != null) {
      print(">>> $user");
      push(context, HomePage());
    } else {
      print("Login incorreto");
    }
  }

  String? _validateLogin(String? text) {
    if (text!.isEmpty && text.length < 5) {
      return "Digite o email";
    }
    return null;
  }

  String? _validateSenha(String? text) {
    if (text!.isEmpty && text.length < 5) {
      return "Digite a senha";
    }
    return null;
  }
}
