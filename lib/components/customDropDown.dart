import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String label;
  final String? value;
  final List<String> items;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  const CustomDropDown({
    super.key,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey, // Label color
          fontWeight: FontWeight.w500,
        ),
        hintText: 'Select $label',
        hintStyle: const TextStyle(
          color: Colors.grey, // Hint/placeholder color
          fontSize: 14,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
      ),
      items:
          items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(item, style: const TextStyle(fontSize: 14)),
                ),
              )
              .toList(),
      onChanged: onChanged,
      validator:
          validator ??
          (value) =>
              value == null || value.isEmpty ? 'Please select $label' : null,
    );
  }
}
