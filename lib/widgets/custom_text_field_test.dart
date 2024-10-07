// import 'package:flutter/material.dart';

// class CustomTextFieldTest extends StatefulWidget {
//   final dynamic icon;
//   final String hintText;
//   final bool isPassword;
//   Function(String)? onChanged;

//   CustomTextFieldTest(
//       {super.key,
//       required this.hintText,
//       this.icon,
//       this.isPassword = false,
//       this.onChanged});

//   @override
//   _CustomTextFieldTestState createState() => _CustomTextFieldTestState();
// }

// class _CustomTextFieldTestState extends State<CustomTextFieldTest> {
//   bool _isObscured = true;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: onChanged,
//       obscureText: widget.isPassword ? _isObscured : false,
//       decoration: InputDecoration(
//         prefixIcon: widget.icon ?? const Icon(Icons.email),
//         prefixIconColor: Colors.white,
//         hintText: widget.hintText,
//         hintStyle: const TextStyle(
//           color: Colors.white,
//         ),
//         enabledBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//         ),
//         border: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//         ),
//         suffixIcon: widget.isPassword
//             ? IconButton(
//                 icon: Icon(
//                   _isObscured ? Icons.visibility : Icons.visibility_off,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     _isObscured = !_isObscured;
//                   });
//                 },
//               )
//             : null,
//       ),
//       keyboardType: widget.isPassword
//           ? TextInputType.visiblePassword
//           : TextInputType.text,
//     );
//   }
// }
