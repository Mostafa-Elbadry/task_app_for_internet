import 'package:flutter/material.dart';

Widget CleanTextFormField({
  required dynamic textInputType,
  required IconData prefixIcon,
  required String labelText,
  required String hintText,
  required String? Function(String?)? validator,
  required TextEditingController? controller,
  IconData? suffixIcon,
  bool obscureText = false,
  bool isPassword = true,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
      vertical: 10,
    ),
    child: TextFormField(
      keyboardType: textInputType,
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  suffixIcon,
                ),
              )
            : null,
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
