import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/logo.png')
                  // Image.network(
                  //   'https://upload.wikimedia.org/wikipedia/commons/a/ab/Logo_TV_2015.png',
                  // ),
                  ),
              Container(height: 20),
              Card(
                child: Padding(
                  // padding: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          if (email == 'teste@teste.com' && password == '123') {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(builder: (context) => HomePage()),
                            // );
                            //
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute(builder: (context) => HomePage()),
                            // );
                            //
                            // Navigator.of(context).pushNamed('/home');

                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('errou!');
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Entrar',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // Container(color: Colors.red),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
