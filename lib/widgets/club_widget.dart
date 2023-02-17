import 'package:flutter/material.dart';

class ClubWidget extends StatelessWidget {
  const ClubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3A4859),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.width * 0.24,
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.24,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF5E6DFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Text('نادي الرياضات الذهنية والالكترونية'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Image(
                        image: AssetImage('assets/images/IEClub.png'),
                        width: 35,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'ساعات المشاركة: 12 ساعة',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'المنصب: رئيس النادي',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
