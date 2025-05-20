import 'package:flutter/material.dart';

class CircleAvatarBorder extends StatelessWidget {
  final Icon icon;
  final Color borderColor;

  const CircleAvatarBorder({
    super.key,
    required this.icon,
    this.borderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Container(
      width: mediaquery.width * 0.05,
      height: mediaquery.width * 0.05,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: mediaquery.width * 0.002),
      ),
      child: Center(child: icon),
    );
  }
}
