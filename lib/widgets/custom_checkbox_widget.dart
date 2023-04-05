import 'package:flutter/material.dart';

class CustomCheckboxW extends StatefulWidget {
  final Function onChange;
  final bool isChecked;
  final double size;
  final double iconSize;
  final Color selectedColor;
  final Color selectedIconColor;
  final Color borderColor;
  final Icon checkIcon;

  const CustomCheckboxW(
      {super.key,
      required this.isChecked,
      required this.onChange,
      required this.size,
      required this.iconSize,
      required this.selectedColor,
      required this.selectedIconColor,
      required this.borderColor,
      required this.checkIcon});

  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxWState createState() => _CustomCheckboxWState();
}

class _CustomCheckboxWState extends State<CustomCheckboxW> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(4),
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
            color: _isSelected ? widget.selectedColor : Colors.transparent,
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(
              color: widget.borderColor,
              width: 1.5,
            )),
        width: widget.size,
        height: widget.size,
        child: _isSelected
            ? Icon(
                Icons.check,
                color: widget.selectedIconColor,
                size: widget.iconSize,
              )
            : null,
      ),
    );
  }
}
