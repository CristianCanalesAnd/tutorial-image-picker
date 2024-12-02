import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        elevation: 4.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          const SizedBox(width: 5),
          Text(title),
        ],
      ),
    );
  }
}
