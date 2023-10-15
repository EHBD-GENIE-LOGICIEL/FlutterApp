import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recetteapp/main.dart';
import 'animation.dart';
import 'socialPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body:SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child:Column(
            children: [
              DelayedAnimation(delay: 2000, child: Container(
                height: 170,
                child: Image.asset('images/recette.png'),
              ),
              ),
              DelayedAnimation(delay: 2500, child: Container(
                height: 200,
                child: Image.asset('images/couverture.png'),
              ),
              ),
              DelayedAnimation(delay: 3500, child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                child: Text(
                  "Votre application de recettes faciles rien que pour vous!!!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ablue,shape: StadiumBorder(),
                      padding: EdgeInsets.all(15),
                    ),
                    child: Text('Commencer'),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context)=>socialPage()),
                      );
                    },
                ),
              ),
              ),
            ],
          )
        )
      )
    );
  }
}
