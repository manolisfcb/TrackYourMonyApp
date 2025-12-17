import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Home(
    ),
    
  ));
}

class Home extends StatelessWidget {
   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GradientContainer(
        child: Center(
          child: Text('Hello, World!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              )),
        ),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0D47A1), // Dark Blue
            Color(0xFF1976D2), // Medium Blue
            Color(0xFF42A5F5), // Light Blue
          ],
        ),
      ),
      child: child,
    );
  }
}