import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/resource/sizes.dart';

class ItemAppBar extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color colorIcon;

  ItemAppBar(
      {required this.text,
      required this.textStyle,
      required this.colorIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: colorIcon,
            ),
          ),
          Spacer(),
          Text(text, style: textStyle),
          Spacer(),
          SizedBox(
            width: width_24,
          )
        ],
      ),
    );
  }
}
