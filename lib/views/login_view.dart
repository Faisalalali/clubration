import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.userEmail});
  final String userEmail;
  @override
  Widget build(BuildContext context) {
    final auth = Auth();
    String password = '';
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('تسجيل دخول'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      enabled: false,
                      initialValue: userEmail,
                      decoration: const InputDecoration(hintText: 'رقمك الجامعي'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: const InputDecoration(hintText: 'كلمة المرور'),
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(foregroundColor: MaterialStatePropertyAll(Colors.white)),
                            child: const Text(
                              'نسيت كلمة السر؟',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            onPressed: () async {
                              var result = await auth.signInWithEmailAndPassword('s$userEmail@kfupm.edu.sa', password);
                              if (result == null) {
                                print('error signing in');
                              } else {
                                print('signed in');
                                print(result.uid);
                              }
                            },
                            child: const Text('تسجيل دخول'),
                          ),
                        ),
                      ),
                    ],
                  ),
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
