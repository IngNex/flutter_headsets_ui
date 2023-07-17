import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.35,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 800),
                    tween: Tween(begin: 1.0, end: 0.0),
                    curve: Curves.easeInOutBack,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(0, -200 * value),
                        child: Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: null,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 1200),
                    tween: Tween(begin: 1.0, end: 0.0),
                    curve: Curves.easeInOutBack,
                    builder: (context, value, child) {
                      return Transform.translate(
                        offset: Offset(0, -200 * value),
                        child: const Text(
                          "WATCH'S",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Text(
                'byMaicolDev',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
