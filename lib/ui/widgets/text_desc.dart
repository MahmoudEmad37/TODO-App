import 'package:flutter/material.dart';
import 'package:to_do_app/ui/theme.dart';

class TextDesc extends StatelessWidget {
  final String title;
  final String desc;
  final IconData icon;

  const TextDesc(
      {Key? key, required this.title, required this.desc, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 35.0,
              color: white,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(title,
                style: const TextStyle(
                  color: white,
                  fontSize: fontXXL,
                ))
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          desc,
          style: const TextStyle(color: white, fontSize: fontxL),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
