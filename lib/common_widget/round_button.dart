import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

enum RoundButtonType { bgGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  final double fontSize;
  final IconData? icon;
  final FontWeight fontWeight;

  const RoundButton(
      {Key? key,
      required this.title,
      this.type = RoundButtonType.bgGradient,
      required this.onPressed,
      required this.fontSize,
      this.icon,
      required this.fontWeight, required double elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: TColor.primaryG1,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(25),
          boxShadow: type == RoundButtonType.bgGradient
              ? const [
                  BoxShadow(
                    blurRadius: 0.5,
                    color: Colors.black26,
                    offset: Offset(0, 0.5),
                  ),
                ]
              : null),
      child: MaterialButton(
        onPressed: onPressed,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        textColor: TColor.primaryColor1,
        minWidth: double.maxFinite,
        elevation: type == RoundButtonType.bgGradient ? 0 : 1,
        color: type == RoundButtonType.bgGradient
            ? Colors.transparent
            : TColor.white,
        child: type == RoundButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                  color: TColor.white,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  fontFamily: 'Hind',
                ),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: TColor.primaryG1,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                    Rect.fromLTRB(0, 0, bounds.width, bounds.height),
                  );
                },
                child: Text(
                  title,
                  style: TextStyle(
                    color: TColor.primaryColor1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }
}
