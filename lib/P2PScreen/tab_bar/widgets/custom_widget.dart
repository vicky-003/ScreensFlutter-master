import 'package:flutter/material.dart';

class CustomWidgetTab extends StatelessWidget {
  final String first;
  final String second;
  final Function()? onTap;

  const CustomWidgetTab({super.key, required this.first, required this.second, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      minLeadingWidth: 0,
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      visualDensity: const VisualDensity(vertical: -4),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            first,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
          Text(
            second,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black87),
          ),
        ],
      ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
            color: Colors.black87),
    );
  }
}