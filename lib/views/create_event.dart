import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/auth.dart';
import 'package:flutter_application_1/views/home_view.dart';

class CreatEvent extends StatelessWidget {
  const CreatEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           const SizedBox(height: 160.0, width: double.infinity, child: Card()),
           const SizedBox(height: 160.0, width: double.infinity, child: Card()),
           const SizedBox(height: 160.0, width: double.infinity, child: Card()),
            // destination
            Card(
              const child: Text("data\n\n\n\n\n\ndata"),
            )
          ],
        ),
      ),);
  }
}