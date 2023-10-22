import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:noteapp50/firebase_options.dart';
import 'package:noteapp50/utilities/router/routes.dart';
import 'package:noteapp50/utilities/router/route_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const NoteApp50());
}

class NoteApp50 extends StatelessWidget {
  const NoteApp50({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        onGenerateRoute: RouterHandler.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: signInRoute,
      ),
    );
  }
}
