import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/event_days.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RweardsState();
}

class _RweardsState extends State<Rewards> {
  int selectedIndex = -1;
  List<String> _list = ['Yes', 'No'];
  @override
  Widget build(BuildContext context) {
    final dataKey = new GlobalKey();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('هل في جوائز؟'),
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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EventDays(),
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
