import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/local_user.dart';
import 'package:flutter_application_1/views/entry_view.dart';
import 'package:provider/provider.dart';

import 'services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StreamProvider.value(initialData: null, value: Auth().user, child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<LocalUser?>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'ReadexPro',
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              bodySmall: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ).apply(
              bodyColor: const Color.fromRGBO(255, 255, 255, 1),
              displayColor: Colors.white,
            ),
            scaffoldBackgroundColor: const Color(0xFF232736),
            colorScheme: ColorScheme.fromSwatch(
              //primarySwatch with color 0xFF5B6FFB
              primarySwatch: const MaterialColor(0xFF5B6FFB, {
                50: Color(0xFFE8EAF6),
                100: Color(0xFFC5CAE9),
                200: Color(0xFF9FA8DA),
                300: Color(0xFF7986CB),
                400: Color(0xFF5C6BC0),
                500: Color(0xFF3F51B5),
                600: Color(0xFF3949AB),
                700: Color(0xFF303F9F),
                800: Color(0xFF283593),
                900: Color(0xFF1A237E),
              }),
            ),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(color: Colors.white),
              fillColor: const Color(0xFF3A4859),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
            )),
        home: const EntryView());
  }
}
