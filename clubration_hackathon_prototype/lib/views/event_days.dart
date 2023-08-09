import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/event_date.dart';

class EventDays extends StatefulWidget {
  const EventDays({super.key});

  @override
  State<EventDays> createState() => _EventDaysState();
}

class _EventDaysState extends State<EventDays> {
  int selectedIndex = -1;
  final List<String> _list = ['يوم', 'اكثر من يوم'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('ايام البطولة'),
                Wrap(
                  direction: Axis.vertical,
                  children: List.generate(2, (index) {
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = index;
                              print(index);
                            });
                          },
                          style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color.fromARGB(35, 255, 255, 255),
                              side: BorderSide(color: Colors.white, width: (index == selectedIndex) ? 3 : 1)),
                          child: Text(_list[index]),
                        ),
                      ),
                    );
                  }),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DatePickerView(),
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
