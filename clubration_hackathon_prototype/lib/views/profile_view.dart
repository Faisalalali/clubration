import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/profile_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          backgroundColor: const Color(0xFF354252),
          actions: const [
            Center(
              child: Text(
                '!مرحبا بك، طارق الجاوي',
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF5E6DFF),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image(image: AssetImage('assets/images/22.png'))),
              // child: ,
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  ProfileButton(
                    icon: Icons.phone,
                    text: 'تعديل بيانات التواصل',
                    onPressed: () {},
                  ),
                  ProfileButton(
                    icon: Icons.person,
                    text: 'تعديل المعلومات الشخصية',
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            // const Text('تعديل حسابك الشخصي'),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     CircleAvatar(
            //       radius: 50,
            //     ),
            //     Column(
            //       children: [
            //         Text('اسم المستخدم'),
            //         Text('رقم الجامعي'),
            //       ],
            //     ),
            //   ],
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  ProfileButton(
                    icon: Icons.security,
                    text: 'تغيير كلمة المرور',
                    onPressed: () {},
                  ),
                  ProfileButton(
                    icon: Icons.help,
                    text: 'الدعم والمساعدة',
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration:
                    const BoxDecoration(color: Color(0xFF862E2E), borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.12,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text('تسجيل الخروج'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: const Color(0xFF354252),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
                padding: const EdgeInsets.fromLTRB(1, 6, 7, 3),
                activeColor: Colors.white,
                color: Colors.white,
                backgroundColor: const Color(0xFF354252),
                tabMargin: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                selectedIndex: 3,
                // tabBackgroundColor: const Color(0xFF1BB58C),
                // tabActiveBorder: ,
                tabBorder: Border.all(color: Colors.transparent),
                tabBorderRadius: 10,
                iconSize: 20,
                gap: 10,
                textStyle: const TextStyle(fontSize: 15),
                tabs: [
                  GButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomeView(),
                        ),
                      );
                    },
                    icon: Icons.home,
                    text: 'الرئيسية',
                    textSize: 3,
                    iconActiveColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 97, 204, 187),
                  ),
                  const GButton(
                    icon: Icons.calendar_today,
                    text: 'المهام',
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  const GButton(
                    icon: Icons.notifications,
                    text: 'الإحصائيات',
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  const GButton(
                    icon: Icons.person,
                    text: 'الملف الشخصي',
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
