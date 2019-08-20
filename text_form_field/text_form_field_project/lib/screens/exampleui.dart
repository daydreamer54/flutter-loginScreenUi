import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              "Register",
              style: TextStyle(color: Colors.white, fontSize: 22.0),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.forward,
              color: Colors.white,
            ),
            onPressed: () {},
            iconSize: 32.0,
          ),
        ],
        title: Text(
          "Example UI",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
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
                    "Sign in",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 55.0,
                    margin: EdgeInsets.only(right: 3.0),
                    child: RaisedButton.icon(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        side: BorderSide(width: 2.0, color: Colors.blue),
                      ),
                      onPressed: () {},
                      color: Colors.white70,
                      elevation: 7.0,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                      ),
                      label: Text(
                        "With Google",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
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
                      color: Colors.blue[200],
                      elevation: 7.0,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                      ),
                      label: Text(
                        "With Facebook",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
