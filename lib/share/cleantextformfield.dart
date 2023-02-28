// For Easy Use in Each FormField
import 'package:flutter/material.dart';

class CleanTextFormField extends StatelessWidget {
  const CleanTextFormField({
    super.key,
    this.textInputType,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
    this.validator,
    
  });

  final dynamic textInputType;
  final IconData prefixIcon;
 
  final String labelText;
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          
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
}
