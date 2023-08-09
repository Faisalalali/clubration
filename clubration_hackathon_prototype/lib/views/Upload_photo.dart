import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/rewards.dart';

class EventPhoto extends StatelessWidget {
  const EventPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
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
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: const Color.fromARGB(255, 144, 203, 236),
                            // shape: const CircleBorder(),
                          ),
                          child: const Icon(Icons.upload_file)),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Rewards(),
                    ));
                  },
                  child: const Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
