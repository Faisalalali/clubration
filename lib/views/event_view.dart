import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/request_poster_view.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.12),
        child: AppBar(
          backgroundColor: const Color(0xFF354252),
          actions: const [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Center(
                      child: Text(
                        'نادي الرياضات الذهنية والالكترونية',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 35, 0),
                      child: Image(
                        image: AssetImage('assets/images/IEClub.png'),
                        width: 40,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 45, 0),
                child: Text('بطولة فيفا'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'التاريخ: 2023/01/22',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'الوقت: 7:30 مساء',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'المكان: قاعة 219',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'الجوائز 1200 - 1000- 800',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF373A48),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.width * 0.2,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(image: AssetImage('assets/images/Screenshot_7.png'))),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    endIndent: 5,
                    indent: 42,
                    thickness: 2,
                  )),
                  Text("المهام المتعلقة بالحدث"),
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    indent: 5,
                    endIndent: 42,
                    thickness: 2,
                  )),
                ]),
              ),
              DataTable(columns: const [
                DataColumn(
                    label: Text(
                  'المهمة',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'المسؤول',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'الحالة',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'التاريخ',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ], rows: const [
                DataRow(cells: [
                  DataCell(Text(
                    'تصميم بوستر',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    'محمد',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    'مكتملة',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    '2021/01/15',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'طلب منظمين',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    'أصيل',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    'تحت التنفيذ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                  DataCell(Text(
                    '2021/01/21',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )),
                ]),
              ]),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    endIndent: 5,
                    indent: 42,
                    thickness: 2,
                  )),
                  Text("اضافة مهمة جديدة"),
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    indent: 5,
                    endIndent: 42,
                    thickness: 2,
                  )),
                ]),
              ),
              Center(
                child: Wrap(crossAxisAlignment: WrapCrossAlignment.center, spacing: 12, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const RequestPosterView(),
                                ),
                              );
                            },
                            child: const Text('طلب تصميم بوستر'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(onPressed: () {}, child: const Text('طلب منظمين للحدث'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(onPressed: () {}, child: const Text('طلب ضيافة للحدث'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ElevatedButton(onPressed: () {}, child: const Text('اخرى'))),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
