import 'package:flutter/material.dart';
import 'package:flutter_glassmorphism/widgets/widgets.dart';

class CardsStackScreen extends StatefulWidget {
  const CardsStackScreen({Key key}) : super(key: key);

  static MaterialPageRoute<void> route() => MaterialPageRoute(
        builder: (context) => CardsStackScreen(),
      );

  @override
  _CardsStackScreenState createState() => _CardsStackScreenState();
}

class _CardsStackScreenState extends State<CardsStackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Stack'),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: CardStack(),
      ),
    );
  }
}
