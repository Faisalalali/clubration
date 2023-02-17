import 'package:flutter/material.dart';

class HomeTaskWidget extends StatelessWidget {
  const HomeTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3A4859),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.width * 0.22,
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.22,
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
              height: 11,
            ),
            const Spacer(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'تصميم بوستر البلوت',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text('اليوم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
