import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;

  const IconContainer({
    super.key,
    required this.icon,
    required this.iconColor, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 0, 0),
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: iconColor, width: 2),
        ),
        child: Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
