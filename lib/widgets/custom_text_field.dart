import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  CustomFormTextField({
    super.key,
    this.onChanged,
    required this.hintText,
    this.icon,
    this.isPassword = false,
  });
  final String hintText;
  Function(String)? onChanged;
  final dynamic icon;
  final bool isPassword;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? _isObscured : false,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: widget.icon ?? const Icon(Icons.face),
        prefixIconColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
      ),
      keyboardType: widget.isPassword
          ? TextInputType.visiblePassword
          : TextInputType.text,
    );
  }
}
