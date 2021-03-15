import 'package:flutter/material.dart';
import 'package:flutter_glassmorphism/widgets/card_view.dart';

class CardsListScreen extends StatefulWidget {
  const CardsListScreen({Key key}) : super(key: key);

  static MaterialPageRoute<void> route() => MaterialPageRoute(
        builder: (context) => CardsListScreen(),
      );

  @override
  _CardsListScreenState createState() => _CardsListScreenState();
}

class _CardsListScreenState extends State<CardsListScreen> {
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
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: CardView(
                          elevation: 0,
                          child: Container(
                            width: double.maxFinite,
                            height: 150,
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        child: CardView(
                          elevation: 0.25,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.5,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.75,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 1.0,
                    child: Container(
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: CardView(
                          elevation: 0,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        child: CardView(
                          elevation: 0.25,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.5,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.75,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 1.0,
                    child: Container(
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: CardView(
                          elevation: 0,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        child: CardView(
                          elevation: 0.25,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.5,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.75,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 1.0,
                    child: Container(
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: CardView(
                          elevation: 0,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        flex: 1,
                        child: CardView(
                          elevation: 0.25,
                          child: Container(
                            height: 150,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.5,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 0.75,
                    child: Container(
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CardView(
                    elevation: 1.0,
                    child: Container(
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 16,
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
