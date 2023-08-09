import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.165), child: profileAppBar(context)),
      body: const Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CreditsWidget(),
                // ClubWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Directionality bottomNavBar() {
    return Directionality(
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

              // tabBackgroundColor: const Color(0xFF1BB58C),
              // tabActiveBorder: ,
              tabBorder: Border.all(color: Colors.transparent),
              tabBorderRadius: 10,
              iconSize: 20,
              gap: 10,
              textStyle: const TextStyle(fontSize: 15),
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
                  backgroundColor: Color.fromARGB(255, 97, 204, 187),
                ),
                GButton(
                  icon: Icons.notifications,
                  text: 'الإحصائيات',
                  backgroundColor: Color.fromARGB(255, 97, 204, 187),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'الملف الشخصي',
                  backgroundColor: Color.fromARGB(255, 97, 204, 187),
                ),
              ]),
        ),
      ),
    );
  }

  // header segment:
  Widget profileAppBar(context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height * 0.165,
      backgroundColor: const Color(0xFF354252),
      actions: const [
        Padding(
          padding: EdgeInsets.all(25.0),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFF5E6DFF),
            // child: ,
          ),
        ),
        Center(
          // heightFactor: 1.3,
          widthFactor: 1.1,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'ضياء طارق فيصل ازهر النزلاوي',
                ),
                Row(
                  children: [
                    Text(
                      '201815380',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '+966555003734',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'linkedin.faisalalali.sa',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.web,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
    );
  }

  // credits segment:
}

class CreditsWidget extends StatelessWidget {
  const CreditsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3A4859),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.width * 0.4,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
            height: MediaQuery.of(context).size.width * 0.22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: clubNames,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFF5E6DFF),
                    // child: ,
                  ),
                ),
              ],
            )),
      ),
    );
  }

  List<Widget> get clubNames {
    Map<String, Color> clubColors = {
      'نادي الحاسب الآلي': const Color.fromRGBO(254, 177, 79, 1),
      'نادي الرياضات الذهنية والإلكترونية': const Color.fromRGBO(238, 57, 133, 1),
      'النادي الإعلامي': const Color.fromRGBO(94, 109, 255, 1),
      'أخرى': const Color.fromRGBO(162, 162, 162, 1),
    };
    List<Widget> list = [];

    for (var i = 0; i < 4; i++) {
      list.add(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 6,
                backgroundColor: clubColors.values.elementAt(i),
              ),
            ),
            Text(
              clubColors.keys.elementAt(i),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
    return list;
  }
}
