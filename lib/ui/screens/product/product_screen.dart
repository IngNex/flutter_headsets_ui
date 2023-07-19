import 'package:flutter/material.dart';
import 'package:flutter_headsets_ui/ui/widgets/AnimationTranslate.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    Key? key,
    required this.tag,
    required this.product,
  }) : super(key: key);
  final int tag;
  final String product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.black,
      Colors.red,
      Colors.blue,
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimationTranslate(
              top: false,
              duration: const Duration(milliseconds: 800),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.arrow_back_outlined,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child:
                                Icon(Icons.menu_outlined, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.shopping_cart_outlined,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: Hero(
                        tag: 'product_${widget.tag}',
                        child: Image(
                          image: AssetImage(
                            widget.product,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      child: TweenAnimationBuilder<double>(
                          duration: const Duration(milliseconds: 800),
                          tween: Tween(begin: 1.0, end: 0.0),
                          curve: Curves.easeInOutBack,
                          builder: (context, value, child) {
                            return Transform.translate(
                              offset: Offset(100 * value, 0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  colors.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 2, color: Colors.grey),
                                          shape: BoxShape.circle,
                                          color: colors[index]),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: AnimationTranslate(
                duration: const Duration(milliseconds: 800),
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(20.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45.0),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.yellow, Colors.amber],
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Text(
                        'Jabra Evolve2 85',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Positioned(
                        top: 80,
                        left: 0,
                        right: 0,
                        child: Text(
                          "Bigger speakers. superior sound. Unbeatable experience. We've developed these headphones with powerful 40mm sound leak-proof speakers. Plus, thanks to our advanced digital chipset and the latest AAC codec, music sounds better than ever. All good things are made to wait. This is the sound experience you've been waiting for.",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          child: const Text(
                            'add to cart   |   \$479',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
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
