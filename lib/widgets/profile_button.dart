import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF3A4859),
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
