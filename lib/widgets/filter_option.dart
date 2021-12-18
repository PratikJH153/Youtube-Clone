import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/constants.dart';

class FilterOption extends StatelessWidget {
  final bool isActive;
  final String title;
  const FilterOption({
    this.isActive = false,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? kPrimaryColor : kInActiveColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.black : kPrimaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
