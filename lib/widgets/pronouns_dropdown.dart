import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class PronounsDropDown extends StatefulWidget {
  const PronounsDropDown({super.key});

  @override
  State<PronounsDropDown> createState() => _PronounsDropDownState();
}

class _PronounsDropDownState extends State<PronounsDropDown> {
  List<String> options = <String>[
    'Mr.',
    'Mrs.',
  ];
  String dropdownValue = 'Mr';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(3.5),
        horizontal: AppLayout.getWidth(5.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Styles.disabledColor, // Set the border color to red.
          width: 2.0, // Set the border width as desired.
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dropdownValue,
            style: Styles.headLineSmall.copyWith(
                fontWeight: FontWeight.w800, color: Styles.disabledColor),
          ),
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Styles.disabledColor,
            ),
            onPressed: () {
              // You can open your custom dropdown here.
              _showCustomDropdown();
            },
          ),
        ],
      ),
    );
  }

  // Function to show your custom dropdown.
  void _showCustomDropdown() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: options.map((String value) {
            return ListTile(
              title: Text(value),
              onTap: () {
                setState(() {
                  dropdownValue = value;
                });
                Navigator.pop(context); // Close the custom dropdown.
              },
            );
          }).toList(),
        );
      },
    );
  }
}
