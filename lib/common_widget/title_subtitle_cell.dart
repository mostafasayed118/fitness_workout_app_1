import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class TitleSubtitleCell extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleSubtitleCell(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          // ShaderMask(
          //   blendMode: BlendMode.srcIn,
          //   shaderCallback: (bounds) {
          //     return LinearGradient(
          //             colors: TColor.primaryG4,
          //             begin: Alignment.centerLeft,
          //             end: Alignment.centerRight)
          //         .createShader(
          //             Rect.fromLTRB(0, 0, bounds.width, bounds.height));
          //   },
          //
          //
          Text(
            title,
            style: TextStyle(
                color: TColor.primaryColor4,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: 'Hind'),
          ),

          Text(
            subtitle,
            style: TextStyle(
              color: TColor.gray,
              fontSize: 12,
              fontFamily: 'Hind',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
