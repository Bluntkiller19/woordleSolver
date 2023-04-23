import 'package:flutter/material.dart';

class DisableOverscroll extends StatelessWidget {
  final Widget child;
  const DisableOverscroll({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
      overScroll.disallowIndicator();
      return true;
    },
    child: child,
    );
  }
}
