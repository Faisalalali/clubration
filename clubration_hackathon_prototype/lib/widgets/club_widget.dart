import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/club_view.dart';

class ClubWidget extends StatelessWidget {
  const ClubWidget({
    super.key,
    required this.club,
  });

  Color color() {
    if (club == 'IEClub') {
      return const Color(0xFFD24B4B);
    } else if (club == 'cclub') {
      return const Color(0xFF0F79F5);
    } else if (club == 'media') {
      return const Color(0xFF17B660);
    } else {
      return const Color(0xFF5E6DFF);
    }
  }

  String name() {
    if (club == 'IEClub') {
      return 'نادي الرياضات الذهنية والالكترونية';
    } else if (club == 'cclub') {
      return 'نادي الحاسب الآلي';
    } else if (club == 'media') {
      return 'النادي الإعلامي';
    } else {
      return 'نادي الرياضات الذهنية والالكترونية';
    }
  }

  String image() {
    if (club == 'IEClub') {
      return 'assets/images/IEClub.png';
    } else if (club == 'cclub') {
      return 'assets/images/cclub.png';
    } else if (club == 'media') {
      return 'assets/images/media.png';
    } else {
      return 'assets/images/IEClub.png';
    }
  }

  String msnb() {
    if (club == 'IEClub') {
      return 'المنصب: رئيس النادي';
    } else if (club == 'cclub') {
      return 'المنصب: عضو';
    } else if (club == 'media') {
      return 'المنصب: مصمم';
    } else {
      return 'رئيس النادي';
    }
  }

  final String club;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ClubView(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF3A4859),
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.width * 0.28,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 0.28,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color(),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Text(name()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image(
                          image: AssetImage(image()),
                          width: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'ساعات المشاركة: 12 ساعة',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        msnb(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
