import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/club_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.165),
          child: AppBar(
            backgroundColor: const Color(0xFF354252),
            actions: const [
              Center(
                child: Text(
                  'مرحبا بك، ضياءالدين حميدالدين',
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF5E6DFF),
                // child: ,
              )
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xFF929292),
                      endIndent: 5,
                      indent: 42,
                      thickness: 2,
                    )),
                    Text("المهام الخاصة بك"),
                    Expanded(
                        child: Divider(
                      color: Color(0xFF929292),
                      indent: 5,
                      endIndent: 42,
                      thickness: 2,
                    )),
                  ]),
                  Text('asdassdasdsadasdsa'),
                  Row(children: [
                    Expanded(
                        child: Divider(
                      color: Color(0xFF929292),
                      endIndent: 5,
                      indent: 42,
                      thickness: 2,
                    )),
                    Text("الاندية التي انضممت اليها"),
                    Expanded(
                        child: Divider(
                      color: Color(0xFF929292),
                      indent: 5,
                      endIndent: 42,
                      thickness: 2,
                    )),
                  ]),
                  Column(
                    children: [
                      ClubWidget(),
                      ClubWidget(),
                      ClubWidget(),
                      ClubWidget(),
                      ClubWidget(),
                      ClubWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
