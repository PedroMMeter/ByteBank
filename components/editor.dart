import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController infoController;
  final String label;
  final String hint;
  final IconData? icon;

  Editor(this.infoController, this.label, this.hint, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: infoController,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}