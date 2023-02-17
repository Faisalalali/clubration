import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/club_widget.dart';
import 'package:flutter_application_1/widgets/home_task_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.165),
        child: AppBar(
          backgroundColor: const Color(0xFF354252),
          actions: const [
            Center(
              child: Text(
                'مرحبا بك، ضياءالدين حميدالدين',
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF5E6DFF),
              // child: ,
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        HomeTaskWidget(),
                        HomeTaskWidget(),
                        SizedBox(width: 20),
                        HomeTaskWidget(),
                        HomeTaskWidget(),
                        SizedBox(width: 20),
                        HomeTaskWidget(),
                      ],
                    ),
                  ),
                ),
                Row(children: [
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
                  children: [
                    ClubWidget(),
                    ClubWidget(),
                    ClubWidget(),
                    ClubWidget(),
                    ClubWidget(),
                    ClubWidget(),
                  ],
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
                padding: const EdgeInsets.fromLTRB(1, 6, 7, 3),
                activeColor: Colors.white,
                color: Colors.white,
                backgroundColor: const Color(0xFF354252),
                tabMargin: EdgeInsets.fromLTRB(15, 4, 15, 4),

                // tabBackgroundColor: const Color(0xFF1BB58C),
                // tabActiveBorder: ,
                tabBorder: Border.all(color: Colors.transparent),
                tabBorderRadius: 10,
                iconSize: 20,
                gap: 10,
                textStyle: TextStyle(fontSize: 15),
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'الرئيسية',
                    textSize: 3,
                    iconActiveColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 97, 204, 187),
                  ),
                  GButton(
                    icon: Icons.calendar_today,
                    text: 'المهام',
                    backgroundColor: Color.fromARGB(255, 94, 109, 255),
                  ),
                  GButton(
                    icon: Icons.notifications,
                    text: 'الإحصائيات',
                    backgroundColor: Color.fromARGB(255, 254, 177, 79),
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'الملف الشخصي',
                    backgroundColor: Color.fromARGB(255, 238, 57, 132),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
