import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toprate_hrm/common/resource/strings.dart';

import '../../../common/resource/name_image.dart';
import '../../../common/resource/sizes.dart';
import '../../../common/resource/text_style.dart';
import '../../../common/widgets/images/svg_image_widget.dart';

class HomeCardItem extends StatelessWidget {
  String text;
  String url;
  TextStyle textStyle;
  HomeCardItem({ required this.text, required this.url, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SVGImageWidget(url: url,height: height_80, width: width_80,),
        SizedBox(height: height_13,),
        Text(text, style:  textStyle,)
      ],
    );
  }
}