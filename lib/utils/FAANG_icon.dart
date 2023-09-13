import 'package:flutter/material.dart';

class FaangIcons extends StatelessWidget {
  const FaangIcons({Key? key, required this.logo}) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/$logo'),
        ),
      ),
    );
  }
}
