import 'package:flutter/material.dart';

import '../widgets/profile_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('تعديل حسابك الشخصي'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                Column(
                  children: [
                    Text('اسم المستخدم'),
                    Text('رقم الجامعي'),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Column(
                children: [
                  ProfileButton(
                    icon: Icons.abc,
                    text: 'تغيير كلمة المرور',
                  ),
                  ProfileButton(
                    icon: Icons.abc_rounded,
                    text: 'تغيير البريد الالكتروني',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
