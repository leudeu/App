import 'package:flutter/material.dart';


class TProductTitleText extends StatelessWidget {
  const TProductTitleText(String s,  {
  super.key,
  required this.title,
  this.smallSize = false,
  this.maxLines = 2,
  this.textAlign =TextAlign.left,

  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign ? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Green Nike Air Shoes',
      style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign:TextAlign.left,

    );
  }
}
