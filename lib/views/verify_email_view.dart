import 'package:flutter/material.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('تم انشاء حسابك بنجاح'),
            const Text('الرجاء مراجعة ايميملك الجامعي لتأكيد حسابك'),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: ElevatedButton(onPressed: () {}, child: const Text('تم تأكيد حسابي'))),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: const Text('اعادة ارسال البريد الالكتروني', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
