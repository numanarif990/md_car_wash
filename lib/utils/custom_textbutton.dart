import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(12), // Removes vertical and horizontal padding
        minimumSize: Size(0, 0), // Removes the minimum size constraints
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduces touch target size
      ).copyWith(
        overlayColor: MaterialStateProperty.resolveWith((states) {
          // Return null or transparent color for all states
          return Colors.transparent;
        }),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey,
          height: 0.6,
        ),
      ),
    );
  }
}
