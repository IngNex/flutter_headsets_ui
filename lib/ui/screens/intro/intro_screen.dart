import 'package:flutter/material.dart';
import 'package:flutter_headsets_ui/ui/screens/home/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(
          //   top: size.height * 0.19,
          //   right: -size.width * 0.48,
          //   child: Image(
          //     color: Colors.black.withOpacity(0.25),
          //     image: const AssetImage('assets/intro.png'),
          //   ),
          // ),
          // Positioned(
          //   top: size.height * 0.18,
          //   right: -size.width * 0.5,
          //   child: const Image(
          //     image: AssetImage('assets/intro.png'),
          //   ),
          // ),

          Positioned(
            top: 0,
            bottom: 0,
            right: -size.width * 1.22,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/headbackground.jpg'),
            ),
          ),
          Positioned(
            top: size.height * 0.7,
            left: size.width * 0.05,
            child: RichText(
              text: const TextSpan(
                text: 'Eleva',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'te Your\n',
                    style: TextStyle(color: Colors.yellow),
                  ),
                  TextSpan(
                    text: 'Audio E',
                  ),
                  TextSpan(
                    text: 'xperience',
                    style: TextStyle(color: Colors.yellow),
                  )
                ],
              ),
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
              onTap: () => Navigator.of(context).push(
                PageRouteBuilder(
                  reverseTransitionDuration: const Duration(milliseconds: 650),
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
    );
  }
}
