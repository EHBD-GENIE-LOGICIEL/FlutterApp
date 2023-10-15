import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recetteapp/recette.dart';
import 'animation.dart';
import 'package:recetteapp/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authentification extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _motdepasse = TextEditingController();
  late bool _succes;
  late String _userEmail;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _register() async{
    final User? user =(
    await _auth.createUserWithEmailAndPassword(email:_emailController.text,password:_motdepasse.text)
    ).user;

    if(user != null){
      setState((){
        _succes = true;
        _userEmail = user.email!;
      });
    }
    else{
      setState((){
        _succes = false;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size:30,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
                delay: 1000,
                child: Container(
                  height: 200,
                  child: Image.asset('images/connexion.png'),
                ),
            ),
            SizedBox(height: 22,),
            LoginForm(),
            SizedBox(height: 125,),
            DelayedAnimation(
                delay: 5500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(
                      horizontal: 125,
                      vertical: 15,
                    ),
                  ),
                  child: Text(
                    'Connexion',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context) => Recette()
                    ),
                    );
                },
            ),
            )
          ],
        )
      )
    );
  }

  void setState(Null Function() param0) {}
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();

}
class _LoginFormState extends State<LoginForm>{
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    var _motdepasse,_emailController;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
              delay: 3500,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  )
                ),
              ),
          ),
          SizedBox(height: 30,),
          DelayedAnimation(
              delay: 4500,
              child: TextField(
                controller: _motdepasse,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  labelText: 'Mot de passe',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
          ),
        ],
      )
    );
  }
}

