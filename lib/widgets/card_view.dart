import 'dart:ui';

import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key key,
    this.child,
    this.elevation = 0.5,
  }) : super(key: key);

  final Widget child;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow.lerp(
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
            ),
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 16.0,
            ),
            elevation,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 8.0,
            sigmaY: 8.0,
          ),
          child: Container(
            decoration: BoxDecoration.lerp(
              BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.white12,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              BoxDecoration(
                color: Colors.white24,
                border: Border.all(
                  color: Colors.white38,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
