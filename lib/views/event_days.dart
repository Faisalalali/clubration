import 'package:flutter/material.dart';

class EventDays extends StatefulWidget {
  const EventDays({super.key});

  @override
  State<EventDays> createState() => _EventDaysState();
}

class _EventDaysState extends State<EventDays> {
  int selectedIndex = -1;
  List<String> _list = ['يوم', 'اكثر من يوم'];
  @override
  Widget build(BuildContext context) {
    final dataKey = new GlobalKey();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ايام البطولة'),
            Wrap(
              direction: Axis.vertical,
              children: List.generate(2, (index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                          print(index);
                        });
                      },
                      child: Text(_list[index]),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(35, 255, 255, 255),
                          side: BorderSide(color: Colors.white, width: (index == selectedIndex) ? 3 : 1)),
                    ),
                  ),
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
