import 'package:flutter/material.dart';

class RequestPosterView extends StatefulWidget {
  const RequestPosterView({super.key});

  @override
  State<RequestPosterView> createState() => _RequestPosterViewState();
}

class _RequestPosterViewState extends State<RequestPosterView> {
  DateTime _date = DateTime.now();
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
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Center(child: Text('إضافة مهمة: تصميم بوستر')),
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
                    Text("اضافة متطلبات المهمة"),
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
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF354252),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFF929292),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF354252),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Color(0xFF929292),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF354252),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  ),
                ),
                const Spacer(),
                const Row(children: [
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    endIndent: 5,
                    indent: 42,
                    thickness: 2,
                  )),
                  Text("اضافة تفاصيل"),
                  Expanded(
                      child: Divider(
                    color: Color(0xFF929292),
                    indent: 5,
                    endIndent: 42,
                    thickness: 2,
                  )),
                ]),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF354252),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF354252),
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(10),
                      // ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ElevatedButton.icon(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            label: const Text('إضافة المهمة'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () async {
                              var result = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2021),
                                lastDate: DateTime(2025),
                              );
                              if (result != null) {
                                setState(() {
                                  _date = result;
                                });
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFF232736),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: Center(
                                child: Text(
                                  _date.toString().substring(0, 10),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
