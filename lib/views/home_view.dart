import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/profile_view.dart';
import 'package:flutter_application_1/widgets/club_widget.dart';
import 'package:flutter_application_1/widgets/home_task_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final clubs = ['IEClub', 'cclub', 'media'];
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
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    endIndent: 5,
                    indent: 42,
                    thickness: 2,
                  )),
                  Text("المهام الخاصة بك"),
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    indent: 5,
                    endIndent: 42,
                    thickness: 2,
                  )),
                ]),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        HomeTaskWidget(),
                        SizedBox(width: 15),
                        HomeTaskWidget(),
                        SizedBox(width: 15),
                        HomeTaskWidget(),
                        SizedBox(width: 15),
                        HomeTaskWidget(),
                        SizedBox(width: 15),
                        HomeTaskWidget(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    endIndent: 5,
                    indent: 42,
                    thickness: 2,
                  )),
                  Text("الاندية التي انضممت اليها"),
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    indent: 5,
                    endIndent: 42,
                    thickness: 2,
                  )),
                ]),
                Column(
                  children: clubs
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClubWidget(
                              club: e,
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          color: const Color(0xFF354252),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
                selectedIndex: 0,
                padding: const EdgeInsets.fromLTRB(1, 6, 7, 3),
                activeColor: Colors.white,
                color: Colors.white,
                backgroundColor: const Color(0xFF354252),
                tabMargin: const EdgeInsets.fromLTRB(15, 4, 15, 4),

                // tabBackgroundColor: const Color(0xFF1BB58C),
                // tabActiveBorder: ,
                tabBorder: Border.all(color: Colors.transparent),
                tabBorderRadius: 10,
                iconSize: 20,
                gap: 10,
                textStyle: const TextStyle(fontSize: 15),
                tabs: [
                  const GButton(
                    icon: Icons.home,
                    text: 'الرئيسية',
                    textSize: 3,
                    iconActiveColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  const GButton(
                    icon: Icons.task_alt,
                    text: 'المهام',
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  const GButton(
                    icon: Icons.stacked_bar_chart_sharp,
                    text: 'الإحصائيات',
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  GButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ProfileView(),
                        ),
                      );
                    },
                    icon: Icons.person,
                    text: 'الملف الشخصي',
                    backgroundColor: const Color.fromARGB(255, 97, 204, 187),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
