import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3A4859),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.22,
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.22,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF232736),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.07,
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2),
                            child: CircleAvatar(
                              radius: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('2+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                )),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  value: 3 / 4,
                                  backgroundColor: Color(0xFF272727),
                                  color: Color(0xFF1BB58C),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 8,
                                child: Text(
                                  '3/4',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            ":المهام المكتملة",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aug 16, 7:30 PM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'بطولة فيفا 23',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF5E6DFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.11,
                  height: MediaQuery.of(context).size.width * 0.11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
