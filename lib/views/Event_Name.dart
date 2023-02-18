import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/views/Upload_photo.dart';
import 'package:flutter_application_1/views/home_view.dart';
import 'package:flutter_application_1/widgets/custom_radio_button.dart';

class EventName extends StatelessWidget {
  const EventName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('عنوان البطولة'),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(hintText: 'أدخل عنوان البطولة')),
                )),
            SizedBox(
              height: 90,
            ),
            Text('مكان البطولة'),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(hintText: 'أدخل مكان البطول')),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EventPhoto(),
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
