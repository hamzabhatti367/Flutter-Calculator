import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color color2;
  final VoidCallback onPress;

  const MyButton({
    Key? key,
    required this.title,
    this.color = Colors.black,
    required this.onPress,
    this.color2 = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 70,
          width: 75,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 25, color: color2, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
