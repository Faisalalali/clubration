import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.userEmail});
  final String userEmail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('تسجيل دخول'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(hintText: 'رقمك الجامعي'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const TextField(
                  decoration: InputDecoration(hintText: 'كلمة المرور'),
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
                        onPressed: () {},
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
    );
  }
}
