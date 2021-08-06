import 'package:flutter/material.dart';

class chips extends StatefulWidget {
  final String chipName;

  chips({required this.chipName});

  @override
  _chipsState createState() => _chipsState();
}

class _chipsState extends State<chips> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xFF9586A8),
          fontSize: 14.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      backgroundColor: Color(0xFFEDEDED),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xFFE2CBFF),
    );
  }
}
