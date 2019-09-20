import 'package:flutter/material.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.check),
                      hintText: 'Your Email',
                      labelText: 'Your Email',
                      labelStyle: TextStyle(fontWeight: FontWeight.w400))),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                  obscureText: true,
                  style: TextStyle(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      suffixText: 'Forget',
                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(fontWeight: FontWeight.w400))),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                  elevation: 6.0,
                  fillColor: Colors.black,
                  shape: StadiumBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Or sign up with Social account',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.0),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 155.0,
                    child: OutlineButton(
                      splashColor: Colors.black,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.android),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('FACEBOOK')
                        ],
                      ),
                      shape: StadiumBorder(),
                      borderSide: BorderSide(width: 1.5),
                    ),
                  ),
                  Container(
                    width: 155,
                    child: OutlineButton(
                      splashColor: Colors.black,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.android),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text('Twittter')
                        ],
                      ),
                      shape: StadiumBorder(),
                      borderSide: BorderSide(width: 1.5),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
