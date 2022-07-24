import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final Color hoverColor;
  final Color hoverChildColor;
  final Color backgroundColor;
  final Color childColor;
  final VoidCallback? onTap;
  final ButtonStyle? style;

  const PrimaryButton({
    Key? key,
    required this.child,
    required this.hoverColor,
    required this.hoverChildColor,
    this.backgroundColor = Colors.white,
    this.childColor = Colors.black,
    this.style,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: (style ??
              ElevatedButton.styleFrom(
                textStyle: AppTextStyles.blackBoldTextStyle14(),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ))
          .copyWith(
        /// set hover color
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.hovered)) {
              return hoverColor;
            } else if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }

            return onTap == null ? null : backgroundColor;
          },
        ),

        /// set foreground child color
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.hovered)) {
              return hoverChildColor;
            }
            return childColor;
          },
        ),
      ),
      child: child,
    );
  }
}
