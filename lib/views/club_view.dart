import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/create_event.dart';
import 'package:flutter_application_1/widgets/event_card.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ClubView extends StatelessWidget {
  const ClubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.12),
        child: AppBar(
          backgroundColor: const Color(0xFF354252),
          actions: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Center(
                      child: Text(
                        'نادي الرياضات الذهنية والالكترونية',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 35, 0),
                      child: Image(
                        image: AssetImage('assets/images/IEClub.png'),
                        width: 40,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF373A48),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.1,
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF1BB58C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.1,
                    child: const Center(
                      child: Text(
                        'الفعاليات',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF373A48),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.1,
                    child: const Center(
                      child: Text(
                        'المهام',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const EventCard()
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        // animatedIcon: AnimatedIcons.,
        animatedIconTheme: const IconThemeData(size: 22.0),
        backgroundColor: const Color(0xFF5B6FFB),
        overlayColor: Colors.black,
        overlayOpacity: 0.0,
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            backgroundColor: const Color(0xFF5B6FFB),
            foregroundColor: Colors.white,
            labelBackgroundColor: Colors.transparent,
            elevation: 0,
            label: 'مهمة جديدة',
            labelStyle: const TextStyle(fontSize: 18.0),
            labelShadow: List.empty(),
            onTap: () => print('FIRST CHILD'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            backgroundColor: const Color(0xFF5B6FFB),
            labelBackgroundColor: Colors.transparent,
            elevation: 0,
            labelShadow: List.empty(),
            foregroundColor: Colors.white,
            label: 'حدث جديد',
            labelStyle: const TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreatEvent(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
