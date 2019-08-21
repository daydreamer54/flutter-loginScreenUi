import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 22.0),),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 75.0, left: 15.0, right: 15.0),
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
                  onPressed: () {},
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
    );
  }
}
