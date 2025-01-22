
import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  final List<Color> colors;
  final int defaultSelectedIndex;

  ColorSelector({
    required this.colors,
    this.defaultSelectedIndex = 1,
  });

  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.colors.asMap().entries.map((entry) {
        int index = entry.key;
        Color color = entry.value;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: _selectedIndex == index ? Colors.black : Colors.transparent,
                width: 3,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}