import 'package:flutter/material.dart';

import 'widgets.dart';

const amountOfCards = 4;

class CardStack extends StatefulWidget {
  @override
  _CardStackState createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animationController.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 80,
      ),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset: Tween<Offset>(
              begin: Offset(0, 50),
              end: Offset(0, 150),
            ).animate(_animationController).value,
            child: child,
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: List<int>.generate(amountOfCards, (e) => e).map((index) {
            final gap = 25.0;

            final elevation = index / amountOfCards;

            final offset = Offset.lerp(
              Offset(-50, -50),
              Offset(50, 50),
              elevation,
            );

            return Transform.translate(
              offset: offset,
              child: Transform(
                transform: Matrix4.skewY(-0.25),
                child: SizedBox(
                  width: 240,
                  height: 160,
                  child: CardView(
                    elevation: elevation,
                    // child: _renderContent(),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _renderContent() {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 3,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                child: Text(
                  'Delicious\nFood',
                  style: theme.textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 3,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                child: Text(
                  'For Healthy Life',
                  style: theme.textTheme.subtitle1,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Our Chefs Special dish\nwith eggs curry and vegetables,\ntetur adipiscing.\nCurabitu accumsan auctor.',
                style: theme.textTheme.bodyText2,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.restaurant_outlined,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }
}
