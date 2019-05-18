import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hotel_booking/home_page.dart';

class GoogleSignInApp extends StatefulWidget {
  @override
  _GoogleSignInAppState createState() => _GoogleSignInAppState();
}

class _GoogleSignInAppState extends State<GoogleSignInApp> {
  //firebase and google sign in references
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  //Where the authentication part happens
  Future<FirebaseUser> _signIn(BuildContext context) async {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Sign In'),
    ));

    //Google Authentication
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    //checking for credentials
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    //Firebase Authentication
    FirebaseUser userDetails =
        await _firebaseAuth.signInWithCredential(credential);
    ProviderDetails providerInfo = ProviderDetails(userDetails.providerId);

    //creating the list and adding all the details
    List<ProviderDetails> providerData = List<ProviderDetails>();
    providerData.add(providerInfo);
    
    //Retrieving all the details and providerid
    UserDetails details = UserDetails(
        userDetails.providerId,
        userDetails.displayName,
        userDetails.photoUrl,
        userDetails.email,
        providerData);

        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The builder widget was introduced to bring the 'context' in the snackbar above
      body: Builder(
          builder: (context) => Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/room.jpeg',
                      fit: BoxFit.cover,
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 280.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Color(0xffffffff),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Color(0xffCE107C),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Sign in using Google',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  )
                                ]),
                            onPressed: () => _signIn(context)
                                .then((FirebaseUser user)=>print(user))
                                .catchError((e) => print(e)),
                          ),
                        ),
                      ),
                      Container(
                        width: 280.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Color(0xffffffff),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Color(0xffCE107C),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Sign in using Facebook',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  )
                                ]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        width: 280.0,
                        child: Align(
                          alignment: Alignment.center,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Color(0xffffffff),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.solidEnvelope,
                                    color: Color(0xffCE107C),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Sign in using Email',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  )
                                ]),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
    );
  }
}

class UserDetails {
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;
  UserDetails(this.providerDetails, this.userName, this.photoUrl,
      this.userEmail, this.providerData);
}

class ProviderDetails {
  ProviderDetails(this.providerDetails);
  final String providerDetails;
}
