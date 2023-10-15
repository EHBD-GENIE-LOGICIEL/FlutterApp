import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'package:recetteapp/main.dart';

class Recette extends StatelessWidget {
  final TextEditingController _namerecette = TextEditingController();
  final TextEditingController _comporecette = TextEditingController();
  final TextEditingController _methoderectte = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
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
              delay: 1500,
              child: TextField(
                  controller: _namerecette,
                  decoration: InputDecoration(
                      labelText: 'Nom de la recette',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                      )
                  )
            ),
          ),
          SizedBox(height: 80,),
          DelayedAnimation(
            delay: 1500,
            child: TextField(
                controller: _comporecette,
                decoration: InputDecoration(
                    labelText: 'Compositions de la recette',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    )
                )
            ),
          ),
          SizedBox(height: 80,),
          DelayedAnimation(
            delay: 1500,
            child: TextField(
                controller: _methoderectte,
                decoration: InputDecoration(
                    labelText: 'Methode de preparation',
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                    )
                )
            ),
          ),
          SizedBox(height: 80,),
          DelayedAnimation(
            delay: 5500,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.blueGrey,
                padding: EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 15,
                ),
              ),
              child: Text(
                'Valider',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      ),
      // RecetteForm(),
    );
  }
}

class RecetteForm extends StatefulWidget {
  @override
  _RecetteFormState createState() => _RecetteFormState();

}
class _RecetteFormState extends State<RecetteForm>{
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            DelayedAnimation(
              delay: 3500,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Nom de la recette',
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
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  labelText: 'Ingredients de la recette',
                ),
              ),
            ),
            SizedBox(height: 80,),
            DelayedAnimation(
              delay: 4500,
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  labelText: 'Methode de preparation',
                ),
              ),
            ),
          ],
        )
    );
  }
}
