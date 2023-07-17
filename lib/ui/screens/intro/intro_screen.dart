import 'package:flutter/material.dart';
import 'package:flutter_headsets_ui/ui/screens/home/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.yellow, Colors.amber],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.19,
              right: -size.width * 0.48,
              child: Image(
                color: Colors.black.withOpacity(0.25),
                image: const AssetImage('assets/intro.png'),
              ),
            ),
            Positioned(
              top: size.height * 0.18,
              right: -size.width * 0.5,
              child: const Image(
                image: AssetImage('assets/intro.png'),
              ),
            ),
            Positioned(
              top: size.height * 0.7,
              left: size.width * 0.05,
              child: const Text(
                'Elevate Your\nAudio Experience',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: size.height * 0.8,
              left: size.width * 0.05,
              child: const Text(
                'Discover High-Quality\nUnmatched Sound Quality',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    reverseTransitionDuration:
                        const Duration(milliseconds: 650),
                    transitionDuration: const Duration(milliseconds: 650),
                    pageBuilder: (context, animation, _) {
                      return FadeTransition(
                        opacity: animation,
                        child: const HomeScreen(),
                      );
                    },
                  ),
                ),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
