import 'package:flutter/material.dart';

class ShowInternetStatus extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const ShowInternetStatus(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 210.0,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.orange[400],
            fontWeight: FontWeight.w800,
            fontSize: 25.0,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
