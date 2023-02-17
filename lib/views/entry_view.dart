import 'package:flutter/material.dart';

import '../services/auth.dart';

class EntryView extends StatelessWidget {
  const EntryView({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Auth();
    String userID = '';
    return Scaffold(
      body: Center(
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
                      decoration: const InputDecoration(hintText: 'رقمك الجامعي', hintTextDirection: TextDirection.rtl),
                      onChanged: (value) {
                        userID = value;
                      },
                    ),
                  ),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.width * 0.13,
                    child: ElevatedButton(
                        onPressed: () async {
                          String result = await auth.signInWithEmailAndPassword('s$userID@kfupm.edu.sa', 'x');
                          if (result == 'user-not-found') {
                          } else if (result == 'wrong-password') {}
                        },
                        child: const Text('الدخول'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
