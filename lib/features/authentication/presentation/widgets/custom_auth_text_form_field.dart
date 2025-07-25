import 'package:flutter/material.dart';

class CustomAuthTextFormField extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final ValueChanged<String> onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomAuthTextFormField({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.onChanged,
    required this.validator,
    required this.controller,
    this.icon,
    this.suffixIcon,
  });

  @override
  State<CustomAuthTextFormField> createState() => _CustomAuthTextFormFieldState();
}

class _CustomAuthTextFormFieldState extends State<CustomAuthTextFormField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        prefixIcon: widget.icon != null ? Icon(widget.icon) : null,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
          icon: Icon(
            _obscureText ? widget.suffixIcon : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
      ),
      keyboardType: widget.keyboardType,
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}