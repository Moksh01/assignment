import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String date;
  final String? subtitle;
  final List<String>? imagePaths;
  final Color titleColor;
  final Color dateColor;
  final Color? subtitleColor;

  const CustomCard({
    super.key,
    required this.title,
    required this.date,
    this.subtitle,
    this.imagePaths,
    required this.titleColor,
    required this.dateColor,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: titleColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                date,
                style: TextStyle(color: dateColor),
              ),
              subtitle != null
                  ? Column(
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          subtitle!,
                          style:
                              TextStyle(color: subtitleColor ?? Colors.black),
                        ),
                      ],
                    )
                  : Container(),
              (imagePaths != null && imagePaths!.isNotEmpty)
                  ? Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: imagePaths!.map((path) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  path,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    )
                  : Container(),
            ],
          )),
    );
  }
}
