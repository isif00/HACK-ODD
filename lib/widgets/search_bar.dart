
import 'package:flutter/material.dart';
import 'package:hack_odd/utils/app_style.dart';
class searchBar extends StatelessWidget {
  const searchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return
        SizedBox(

            height: 40,
            width: 240,
            child:TextField(

              style: Styles.headLineSmall.copyWith(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                contentPadding:

                const EdgeInsets.symmetric( horizontal: 20.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Styles.Search_border, width: 2.5),
                    borderRadius: BorderRadius.circular(32.0)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Styles.titleColor, width: 2.0),
                    borderRadius: BorderRadius.circular(32.0)),
                hintText: "Search...",
                suffixIcon: Icon(Icons.search_outlined, color: Styles.DarkerGreen,)
              ),

            )
        );
  }
}
