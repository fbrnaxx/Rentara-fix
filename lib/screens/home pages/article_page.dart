import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class ArticlePage extends StatelessWidget {
  ArticlePage({super.key, required this.title});

  final String title;

  final List<Widget> fancyCards = <Widget>[
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/indomap.png"),
      title: "Letak strategis\nwilayah Indonesia",
    ),
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/pulau.png"),
      title: "Kondisi negara\nkepulauan",
    ),
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/alam.png"),
      title: "Perbedaan kondisi\nalam",
    ),
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/transport.png"),
      title: "Keadaan transportasi\ndan komunikasi",
    ),
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/pluto-waiting.png"),
      title: "Penerimaan masyarakat\nterhadap perubahan",
    ),
    FancyCard(
      image: Image.asset("assets/img/homepage/articles/pluto-welcome.png"),
      title: "Historis sebelum\nIndonesia merdeka",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 30, 14, 14),
          child: Container(
            width: 400,
            height: 1000,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: Color(0xFFDDD3C0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 310, 0),
                    child: IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xFF7D613B),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Apa saja faktor\nkeberagaman bangsa Indonesia?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image.asset(
                    "assets/img/homepage/bti_article.png",
                    width: 310,
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(
                      "Dikutip dari buku New Edition Pocket Book IPS & PKN SMP Kelas VII, VIII & IX (2017) oleh Shiva Devy, secara umum, faktor-faktor yang memengaruhi keberagaman masyarakat Indonesia adalah sebagai berikut:",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: StackedCardCarousel(
                      items: fancyCards,
                    ),
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

class FancyCard extends StatelessWidget {
  const FancyCard({
    super.key,
    required this.image,
    required this.title,
  });
  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              child: image,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            OutlinedButton(
              child: const Text("next more"),
              onPressed: () => print("Button was tapped"),
            ),
          ],
        ),
      ),
    );
  }
}

