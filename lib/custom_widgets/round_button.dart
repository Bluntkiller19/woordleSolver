import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woordle_solver/theme/theme_model.dart';

class RoundButtons extends StatelessWidget{
  final String btnName;
  final Function onPressed;
  final double fontSize;
  final double sizeWidth;

  const RoundButtons({
    super.key,
    required this.btnName,
    required this.onPressed,
    required this.fontSize,
    required this.sizeWidth,

  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () => onPressed(),
      color: Provider.of<ThemeModel>(context).currentTheme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(10),
      ),
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(
          minHeight: 65,
          maxWidth: sizeWidth,
        ),
        child: Text(
            btnName,
            textAlign: TextAlign.center,
          style: Provider.of<ThemeModel>(context).currentTheme.textTheme.bodyMedium?.copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}