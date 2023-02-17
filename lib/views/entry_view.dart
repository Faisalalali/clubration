import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/login_view.dart';
import 'package:flutter_application_1/views/register_view.dart';

import '../services/auth.dart';

class EntryView extends StatefulWidget {
  const EntryView({super.key});

  @override
  State<EntryView> createState() => _EntryViewState();
}

class _EntryViewState extends State<EntryView> {
  final _uidController = TextEditingController();
  final auth = Auth();

  @override
  void dispose() {
    _uidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'مرحبا بك في تطبيقنا',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          controller: _uidController,
                          decoration:
                              const InputDecoration(hintText: 'رقمك الجامعي', hintTextDirection: TextDirection.rtl),
                          onChanged: (value) {
                            // setState(() {});
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.13,
                        child: ElevatedButton(
                            onPressed: () async {
                              String result =
                                  await auth.signInWithEmailAndPassword('s${_uidController.text}@kfupm.edu.sa', 'x');
                              if (result.contains('user-not-found')) {
                                print(_uidController.text);
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RegisterView(userEmail: _uidController.text),
                                ));
                              } else if (result.contains('wrong-password')) {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginView(userEmail: _uidController.text),
                                ));
                              }
                            },
                            child: const Text('الدخول'))),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
