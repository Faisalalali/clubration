import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Event_Name.dart';

class CreatEvent extends StatefulWidget {
  const CreatEvent({super.key});

  @override
  State<CreatEvent> createState() => _CreatEventState();
}

class _CreatEventState extends State<CreatEvent> {
  int selectedIndex = -1;
  final List<String> _list = ['بطولة', 'تجمع', 'ندوة', 'ورشة عمل', 'مسابقة'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('نوع الفعالية'),
                Wrap(
                  direction: Axis.vertical,
                  children: List.generate(5, (index) {
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
                      builder: (context) => const EventName(),
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
