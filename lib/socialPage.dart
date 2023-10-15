import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'package:recetteapp/main.dart';
import 'package:recetteapp/authentification.dart';


class socialPage extends StatelessWidget {

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
              delay: 1000,
              child: Container(
                height: 200,
                child: Image.asset('images/chef.png'),
            ),
            ),
            DelayedAnimation(
                delay: 1000,
                child: Container(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 30,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Le changement commence ici.',
                          style:GoogleFonts.poppins(
                            color:Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Enregistrez vos recettes pour accéder à votre programme culinaire personnel.",
                          textAlign: TextAlign.center,
                          style:GoogleFonts.poppins(
                            color:ablue,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
            DelayedAnimation(
                delay: 3500,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context)=>Authentification(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape:StadiumBorder(),
                            primary: Colors.red,
                            padding: EdgeInsets.all(13),
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('EMAIL'),
                              SizedBox(width: 10),
                              Icon(Icons.mail_outline_outlined),
                        ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context)=>Authentification(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape:StadiumBorder(),
                          primary: ablue,
                          padding: EdgeInsets.all(13),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('FACEBOOK'),
                            SizedBox(width: 10),
                            FaIcon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context)=>Authentification(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape:StadiumBorder(),
                          primary: Colors.white,
                          padding: EdgeInsets.all(13),
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('GOOGLE',style:GoogleFonts.poppins(color:Colors.black)),
                            Image.asset('images/google.png',height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }
}

