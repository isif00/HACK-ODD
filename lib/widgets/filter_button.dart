import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_layout.dart';
import 'package:hack_odd/utils/app_style.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({Key? key, required this.filterField}) : super(key: key);
  final String filterField;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppLayout.getHeight(10), right: AppLayout.getHeight(10)),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry?>(
              (Set<MaterialState> states) {
            return EdgeInsets.only(
                left: AppLayout.getHeight(10), right: AppLayout.getHeight(10));
          }),
          elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
            return 0.0;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return isClicked ? Colors.white : Styles.primaryColor;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return isClicked ? Styles.primaryColor : Colors.white;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8.0), // Adjust the radius as needed
              side: BorderSide(
                  color: Styles.primaryColor // Change the border color here
                  ),
            ),
          ),
        ),
        child: Text(widget.filterField),
      ),
    );
  }
}
