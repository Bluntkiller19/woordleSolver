import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trivia_quize/core/models/theme_model.dart';
import 'package:trivia_quize/core/utils/routes.dart';

class BackOverRide extends StatelessWidget {
  final Widget child;
  final Function onPress;

  const BackOverRide({
    super.key,
    required this.child,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'Return to home screen',
                textAlign: TextAlign.center,
              ),
              content: const Text(
                  'Are you sure you want to return to the home screen?'),
              actions: [
                TextButton(
                  child: const Text(
                    'Cancel',
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
                TextButton(
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        color: Provider.of<ThemeModel>(context)
                            .currentTheme
                            .primaryColor,
                      ),
                    ),
                    onPressed: () => onPress(),
                ),
              ],
            );
          },
        );
        return shouldPop ?? false;
      },
      child: child,
    );
  }
}
