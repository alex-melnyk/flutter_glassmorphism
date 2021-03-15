import 'package:flutter/material.dart';
import 'package:flutter_glassmorphism/widgets/card_view.dart';

class DetailedCardScreen extends StatefulWidget {
  const DetailedCardScreen({Key key}) : super(key: key);

  static MaterialPageRoute<void> route() => MaterialPageRoute(
        builder: (context) => DetailedCardScreen(),
      );

  @override
  _DetailedCardScreenState createState() => _DetailedCardScreenState();
}

class _DetailedCardScreenState extends State<DetailedCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            alignment: Alignment.center,
            child: CardView(
              elevation: 0.5,
              child: Container(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image(
                        image: AssetImage('assets/images/soda-can.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Random Soda',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$5.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Refreshing orange taste soda\nwith hint of ginger',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Flexible(
                      child: RaisedButton.icon(
                        color: Colors.lightGreen,
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        label: Text(
                          'ADD TO CART',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
