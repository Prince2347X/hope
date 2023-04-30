import 'package:flutter/material.dart';

import 'package:hope/constants.dart' as constants;

class SearchBar extends StatefulWidget {
  final Function(String) callback;
  const SearchBar({super.key, required this.callback});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: isActive ? constants.primaryColor : Colors.transparent,
            width: 2,
          ),
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            onChanged: (value) {
              widget.callback(value);
            },
            onTapOutside: (_) {
              FocusScope.of(context).unfocus();
              setState(() {
                isActive = false;
              });
            },
            onTap: () {
              setState(() {
                isActive = true;
              });
            },
            onSubmitted: (value) {
              setState(() {
                isActive = false;
              });
            },
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Search Hospitals',
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 14,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: isActive ? constants.primaryColor : Colors.black,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }
}
