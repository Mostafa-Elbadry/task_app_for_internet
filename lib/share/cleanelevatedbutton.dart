import 'package:flutter/material.dart';

class CleanElevatedButton extends StatelessWidget {
  const CleanElevatedButton({
    super.key,
    required this.width,
    required this.height,
    required this.nameText,
    required this.onPressed,
  });

  final double width;
  final double height;
  final String nameText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width * .8, height * .06),
        elevation: 10,
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      child: Text(nameText),
    );
  }
}
