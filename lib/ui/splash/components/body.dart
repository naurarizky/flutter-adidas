import 'package:e_commerce/consts.dart';
import 'package:e_commerce/ui/home/catalogue_screen.dart';
import 'package:flutter/material.dart';

//Secara sederhana, StatelessWidget untuk UI yang tetap, dan StatefulWidget untuk UI yang bisa berubah.
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  PageController _pageController = PageController();

  // Data splash screen
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Adidas! Discover the new Supernova.",
      "image": "assets/images/logoadidas.png",
    },
    {
      "text": "Supercomfort. Supernova.",
      "image": "assets/images/logoadidas.png",
    },
    {
      "text": "The comfort to keep going, stride.",
      "image": "assets/images/logoadidas.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]["text"]!,
                    image: splashData[index]["image"]!,
                    imageWidth: 150, // Set ukuran gambar lebih kecil, misal 150
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  splashData.length,
                  (index) => _dotIndicator(index: index),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {
                    if (currentPage == splashData.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CatalogueScreen()),
                      );
                    } else {
                      _pageController.animateToPage(
                        currentPage + 1,
                        duration: animationDuration,
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    currentPage == splashData.length - 1 ? "Start" : "Next",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Kode untuk logika dots indicator
  AnimatedContainer _dotIndicator({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? primaryColor : secondaryColor,
      ),
      width: currentPage == index ? 20 : 10,
      height: 10,
      duration: animationDuration,
    );
  }
}

// Class SplashContent yang digunakan di atas
class SplashContent extends StatelessWidget {
  final String text, image;
  final double imageWidth; // Tambahkan variabel untuk lebar gambar

  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
    this.imageWidth = 150, // Nilai default untuk lebar gambar
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text(
          "Adidas",
          style:  TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20), // Jarak antara teks dan gambar
        Image.asset(
          image,
          width: imageWidth, // Set lebar gambar di sini
          height: imageWidth, // Set tinggi gambar di sini (sama dengan lebar)
        ),
      ],
    );
  }
}
