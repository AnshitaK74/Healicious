
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recepie_app/bottom.dart';
import 'package:recepie_app/challenge.dart';
import 'package:recepie_app/cusine%20builcaed.dart';
import 'package:recepie_app/form.dart';
import 'package:recepie_app/home.dart';
import 'package:recepie_app/hydration.dart';
import 'package:recepie_app/italiansugar.dart';
import 'package:recepie_app/japnease.dart';
import 'package:recepie_app/junk.dart';
import 'package:recepie_app/junk2.dart';
import 'package:recepie_app/login2.dart';
import 'package:recepie_app/registration.dart';
// import 'package:recepie_app/login2.dart';
// import 'package:recepie_app/splash.dart';
// import 'package:recepie_app/otp.dart';
// import 'package:recepie_app/home.dart';
import 'package:recepie_app/japnease.dart';

import 'package:recepie_app/highgi.dart';
import 'package:recepie_app/junkfoodpcos.dart';
import 'package:recepie_app/dairypcos.dart';
import 'package:recepie_app/carbs.dart';
import 'package:recepie_app/samolina.dart';
import 'package:recepie_app/splash.dart';
import 'package:recepie_app/refined flour page.dart';
import 'package:recepie_app/white rice.dart';
import 'package:recepie_app/soya.dart';
import 'package:recepie_app/monday pcos.dart';
import 'package:recepie_app/wednesday.pcos.dart';
import 'package:recepie_app/home.dart';





void main() async{
  WidgetsFlutterBinding.ensureInitialized();
      Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyCTr9w2-RGnfsp7ORsouxANIDaomQPjrYo", appId:"1:779589265062:android:a4d7d0dc9225083d51b667" , messagingSenderId:"779589265062" , projectId: "recepieapp-abc9b",));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:splash()
    );
  }
}

