import 'package:flutter/material.dart';
import 'LoginPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'log in',
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
                    'sign up',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check),
                        hintText: 'Your Email',
                        labelText: 'Your Email',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: 'Name',
                        labelText: 'Name',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400))),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                    obscureText: true,
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
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
                        'Sign Up',
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
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'By signing up you agree to our ',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Terms of Use',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'and ',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Privicy Policy',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
