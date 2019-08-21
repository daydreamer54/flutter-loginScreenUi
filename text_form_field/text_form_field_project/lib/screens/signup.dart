import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _nameSurname, _mail, _password;
  final formKey = GlobalKey<FormState>();
  bool autoControl = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        errorColor: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontSize: 22.0),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 75.0, left: 15.0, right: 15.0),
            child: Form(
              key: formKey,
              autovalidate: autoControl,
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person_pin,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.red),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                    ),
                    textAlign: TextAlign.center,
                    validator: _isimKontrol,
                    onSaved: (value) => _nameSurname = value,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Mail',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.red),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                    ),
                    textAlign: TextAlign.center,
                    validator: _emailKontrol,
                    onSaved: (value) => _mail = value,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                        size: 35.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.blue),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.red),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                    ),
                    textAlign: TextAlign.center,
                    validator: (String girilendeger) {
                      if (girilendeger.length < 5) {
                        return "Character lenght can't be lower than 5";
                      } else
                        return null;
                    },
                    onSaved: (value) => _password = value,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 55.0,
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        side: BorderSide(width: 2.0, color: Colors.blue),
                      ),
                      onPressed: _checkValidation,
                      color: Colors.green[200],
                      elevation: 7.0,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                      ),
                      label: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _checkValidation() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      debugPrint("Name : $_nameSurname, Mail : $_mail, Password : $_password");
    }
    setState(() {
      autoControl = true;
    });
  }

  String _isimKontrol(String isim) {
    RegExp regex = RegExp("^[a-zA-Z]+\$");
    if (!regex.hasMatch(isim)) {
      return "It can't have number";
    } else
      return null;
  }

  String _emailKontrol(String mail) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(mail)) {
      return "Invalid email address";
    } else
      return null;
  }
}
