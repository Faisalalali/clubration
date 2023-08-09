import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/event_days.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RweardsState();
}

class _RweardsState extends State<Rewards> {
  int selectedIndex = -1;
  final List<String> _list = ['نعم', 'لا'];
  @override
  Widget build(BuildContext context) {
    // final dataKey = GlobalKey();
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('هل في جوائز؟'),
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
                      builder: (context) => const EventDays(),
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
