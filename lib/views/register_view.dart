import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required this.userEmail});
  final String userEmail;
  @override
  Widget build(BuildContext context) {
    String password = '';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('إنشاء حساب جديد'),
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
                child: TextFormField(
                  enabled: false,
                  initialValue: userEmail,
                  decoration: const InputDecoration(hintText: 'كلمة المرور'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: const InputDecoration(hintText: 'تأكيد كلمة المرور'),
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.12,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('تسجيل جديد'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
