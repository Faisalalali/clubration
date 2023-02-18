import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_view.dart';

class DatePickerView extends StatefulWidget {
  const DatePickerView({super.key});

  @override
  State<DatePickerView> createState() => _DatePickerViewState();
}

class _DatePickerViewState extends State<DatePickerView> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('اختر تاريخ البطولة'),
                GestureDetector(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate,
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2024),
                    );
                    if (picked != null && picked != _selectedDate) {
                      setState(() {
                        _selectedDate = picked;
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF5E6DFF),
                    ),
                    // color: Color(0xFF5E6DFF),
                    height: 40,
                    width: 120,
                    child: Center(child: Text(_selectedDate.toString().substring(0, 10))),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text('تم اضافة الحدث بنجاح'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                            builder: (context) => const HomeView(),
                                          ),
                                          (route) => false);
                                    },
                                    child: const Text('حسنا'))
                              ],
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
