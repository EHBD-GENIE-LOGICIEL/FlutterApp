import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recetteapp/welcome.dart';

const ablue = const Color(0xFF024AD5);
final FirebaseAuth _auth = FirebaseAuth.instance;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecetteApp',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('RecetteApp'),
      //   ),
      //   body: Center(
      //     child: DelayedAnimation(delay: 2000,child:FlutterLogo(size:200)),
      //   ),
      // ),
    );
  }
}
