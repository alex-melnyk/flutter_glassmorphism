import 'package:flutter/material.dart';
import 'package:flutter_glassmorphism/screens/screens.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton.icon(
                onPressed: () => Navigator.of(context).push(CardsListScreen.route()),
                icon: Icon(Icons.dashboard),
                label: Text('Cards List'),
              ),
              RaisedButton.icon(
                onPressed:() => Navigator.of(context).push(CardsStackScreen.route()),
                icon: Icon(Icons.layers),
                label: Text('Cards Stack'),
              ),
              RaisedButton.icon(
                onPressed: () => Navigator.of(context).push(DetailedCardScreen.route()),
                icon: Icon(Icons.padding),
                label: Text('Details Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
