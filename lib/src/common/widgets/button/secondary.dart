import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondaryButton extends StatelessWidget {
  final TextStyle? textStyle;
  final Color? iconColor;
  final String text;
  final String icon;
  final VoidCallback onTap;

  const SecondaryButton({
    Key? key,
    this.iconColor,
    this.textStyle,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    color: iconColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    text,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
