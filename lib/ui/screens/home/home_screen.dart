import 'package:flutter/material.dart';
import 'package:flutter_headsets_ui/ui/screens/product/product_screen.dart';
import 'package:flutter_headsets_ui/ui/widgets/AnimationTranslate.dart';
import 'package:flutter_headsets_ui/ui/widgets/AnimationTranslateH.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.headphones,
      Icons.games_rounded,
      Icons.bluetooth,
      Icons.mic_external_on_rounded,
      Icons.music_note,
    ];
    final iconButton = [
      Icons.home_outlined,
      Icons.person_outline_rounded,
      Icons.favorite_border_outlined,
      Icons.grid_view_outlined,
    ];
    final product = [
      'assets/headsets/1.png',
      'assets/headsets/2.png',
      'assets/headsets/3.png',
      'assets/headsets/4.png',
      'assets/headsets/5.png',
      'assets/headsets/6.png',
      'assets/headsets/7.png',
      'assets/headsets/8.png',
      'assets/headsets/9.png',
      'assets/headsets/10.png'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        child: Icon(Icons.menu_outlined, color: Colors.white),
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
                            child: Icon(Icons.favorite_border,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AnimationTranslate(
              top: false,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const AnimationTranslateH(
              left: false,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Category',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: List.generate(
                icons.length,
                (index) => AnimationTranslateH(
                  left: false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      elevation: index == 0 ? 5 : 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(icons[index]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: AnimationTranslate(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: product.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(milliseconds: 650),
                                  reverseTransitionDuration:
                                      const Duration(milliseconds: 650),
                                  pageBuilder: (context, animation, _) {
                                    return FadeTransition(
                                        opacity: animation,
                                        child: ProductScreen(
                                            tag: index,
                                            product: product[index]));
                                  },
                                ));
                              },
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [Colors.yellow, Colors.orange],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -15,
                                    left: -15,
                                    right: -15,
                                    bottom: -15,
                                    child: Hero(
                                      tag: 'product_$index',
                                      child: Image(
                                        image: AssetImage(product[index]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jabra Evolve2 85',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('\$250',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            AnimationTranslate(
              duration: const Duration(milliseconds: 800),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.yellow, Colors.amber],
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        5.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    iconButton.length,
                    (index) => Icon(
                      iconButton[index],
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
