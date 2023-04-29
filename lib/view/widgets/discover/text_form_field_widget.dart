import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade200,
          contentPadding: const EdgeInsets.all(10),
          hintText: "Search",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.tune),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30))),
    );
  }
}
