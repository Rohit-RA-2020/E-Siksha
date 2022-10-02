import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.text,
    required this.radius,
  }) : super(key: key);

  final String text;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: const Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey.shade200,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Colors.greenAccent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
      ),
    );
  }
}
