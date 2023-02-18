import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/views/event_days.dart';
import 'package:flutter_application_1/views/home_view.dart';
import 'package:flutter_application_1/views/rewards.dart';
import 'package:flutter_application_1/widgets/custom_radio_button.dart';

class EventPhoto extends StatelessWidget {
  const EventPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('رفع صورة البطولة'),
            Padding(
                padding: const EdgeInsets.all(33.0),
                child: SizedBox(
                  width: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.upload_file),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 144, 203, 236),
                        onPrimary: Colors.black,
                        // shape: const CircleBorder(),
                      )),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Rewards(),
                          ));
              },
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
