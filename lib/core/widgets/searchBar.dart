import 'dart:async';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SearchBarWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSearchTap;
  final String hintText;
  final Color color;
  final TextEditingController? controller; // Add this

  const SearchBarWidget({
    super.key,
    this.onChanged,
    this.onSearchTap,
    this.color = blackColor,
    this.hintText = "Search Songs",
    this.controller, // Add this
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController _controller;
  Timer? _debounce;

  void _onSearchChanged(String value) {
    // Cancel any existing timer
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    // Start a new timer
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      if (widget.onChanged != null) {
        widget.onChanged!(value);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: TextField(
        controller: _controller,
        onChanged: _onSearchChanged,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: widget.onSearchTap,
          ),
        ),
      ),
    );
  }
}
