import 'package:flutter/material.dart';

class CardBiodata extends StatelessWidget {
  const CardBiodata({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        width: 380,
        child: Row(
          children: [
            Text(text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      color: const Color.fromARGB(255, 248, 240, 255),
    );
  }
}
