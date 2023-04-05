
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List<String> list = ['0.01', '0.1'];

  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 30,
          width: 70,
          decoration:
              const BoxDecoration(color: Color.fromARGB(119, 88, 85, 100)),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              iconSize: 16,
              dropdownColor: CryptoTheme.deepGrey,
              iconEnabledColor: CryptoTheme.white,
              value: dropdownValue,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(
                  () {
                    dropdownValue = value!;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
