import 'package:flutter/material.dart';
import 'package:hotel_booking/splash_screen.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

enum FormType { login, register }

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;
  FormType _formType = FormType.login;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void moveToRegister() {
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    _formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Account',
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage('assets/room.jpeg'))),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: SingleChildScrollView(
            child: Container(
              width: targetWidth,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: buildSubmitButtons() + buildInputs(),
                ),
              ),
            ),
          ),
        ),
        
      ),
    );
  }

  List<Widget> buildInputs() {
    if (_formType == FormType.login) {
      return [
      SizedBox(height: 30.0),
      RaisedButton(
        elevation: 20.0,
        color: Colors.green,
        textColor: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(fontSize: 19.0),
        ),
        onPressed: () {
          if (!_formKey.currentState.validate()) {
            return;
          }
          Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SplashScreen()));
        },
      ),
      FlatButton(
        color: Colors.white,
        textColor: Colors.black,
        child: Text(
          'CREATE NEW ACCOUNT',
          style: TextStyle(fontSize: 18.0),
        ),
        onPressed: moveToRegister,
      ),
      SizedBox(height: 30.0),
      Text(
        'OR',
        style: TextStyle(fontSize: 20.0, color: Colors.black),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 30.0),
      MaterialButton(
        height: 40.0,
        elevation: 20.0,
        color: Colors.blue[900],
        textColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.face),
            SizedBox(width: 70.0),
            Text(
              'Log in with Facebook',
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
        onPressed: () {
          if (!_formKey.currentState.validate() || !_acceptTerms) {
            return;
          }
          Navigator.pushReplacementNamed(context, '/products');
        },
      ),
    ];
    } else {
      return [
      RaisedButton(
        elevation: 20.0,
        color: Colors.green,
        textColor: Colors.white,
        child: Text(
          'CREATE',
          style: TextStyle(fontSize: 19.0),
        ),
        onPressed: () {
          if (!_formKey.currentState.validate() || !_acceptTerms) {
            return;
          }
          Navigator.pushReplacementNamed(context, '/products');
        },
      ),
      FlatButton(
        color: Colors.white,
        textColor: Colors.black,
        child: Text(
          'Already have an account? Login'),
        onPressed: moveToLogin,
      ),
      Text(
        'OR',
        style: TextStyle(fontSize: 20.0, color: Colors.black),
        textAlign: TextAlign.center,
      ),
      MaterialButton(
        height: 40.0,
        elevation: 20.0,
        color: Colors.blue[900],
        textColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.face),
            SizedBox(width: 70.0),
            Text(
              'Log in with Facebook',
              style: TextStyle(fontSize: 18.0),
            )
          ],
        ),
        onPressed: () {
          if (!_formKey.currentState.validate() || !_acceptTerms) {
            return;
          }
          Navigator.pushReplacementNamed(context, '/products');
        },
      ),
    ];
    }
    
  }

  List<Widget> buildSubmitButtons() {
    if (_formType == FormType.login) {
      return [
        SizedBox(height: 20.0),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Email', filled: true, fillColor: Colors.white),
          keyboardType: TextInputType.emailAddress,
          validator: (String value) {
            if (value.isEmpty ||
                !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(value)) {
              return 'Please enter a valid email';
            }
          },
          onSaved: (String value) {
            setState(() {
              _emailValue = value;
            });
          },
        ),
        SizedBox(height: 10.0),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Password', filled: true, fillColor: Colors.white),
          obscureText: true,
          validator: (String value) {
            if (value.isEmpty || value.length < 6) {
              return 'Password Invalid';
            }
          },
          onSaved: (String value) {
            setState(() {
              _passwordValue = value;
            });
          },
        ),
        SizedBox(height: 30.0),
      ];
    } else {
      return [
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Name', filled: true, fillColor: Colors.white),
          keyboardType: TextInputType.emailAddress,
          validator: (String value) {
            if (value.isEmpty ||
                !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(value)) {
              return 'Please enter a valid email';
            }
          },
          onSaved: (String value) {
            setState(() {
              _emailValue = value;
            });
          },
        ),
        SizedBox(height: 5.0),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Email', filled: true, fillColor: Colors.white),
          keyboardType: TextInputType.emailAddress,
          validator: (String value) {
            if (value.isEmpty ||
                !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                    .hasMatch(value)) {
              return 'Please enter a valid email';
            }
          },
          onSaved: (String value) {
            setState(() {
              _emailValue = value;
            });
          },
        ),
        SizedBox(height: 5.0),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Password', filled: true, fillColor: Colors.white),
          obscureText: true,
          validator: (String value) {
            if (value.isEmpty || value.length < 6) {
              return 'Password Invalid';
            }
          },
          onSaved: (String value) {
            setState(() {
              _passwordValue = value;
            });
          },
        ),
        SizedBox(height: 5.0),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Confirm Password',
              filled: true,
              fillColor: Colors.white),
          obscureText: true,
          validator: (String value) {
            if (value.isEmpty || value.length < 6) {
              return 'Password Invalid';
            }
          },
          onSaved: (String value) {
            setState(() {
              _passwordValue = value;
            });
          },
        ),
        SizedBox(height: 10.0),
        SwitchListTile(
          value: _acceptTerms,
          onChanged: (bool value) {
            setState(() {
              _acceptTerms = value;
            });
          },
          title: Text('Accept Terms'),
        ),
      ];
    }
  }
}
