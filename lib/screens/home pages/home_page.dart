import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rentara/misc/colors.dart';
import 'package:rentara/screens/home%20pages/article_page.dart';
import 'package:rentara/widgets/home_app_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  var images = {
    "ourservice.jpg":"OUR SERVICE",
    "return.png":"HOW TO RETURN",
    "laundry.jpg":"LAUNDRY",
  };

  late final PageController pageController;
  int pageNo = 0;

  late final Timer carasouelTmer = getTimer();

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 1) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
    });
  }

  @override
  void initState(){
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(
        length: 1, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 149, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/rentara.png',
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF7D613B),
            ),
          ),
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.login,
              color: Color(0xFF7D613B),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 263,
                    child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (index) {
                        pageNo = index;
                        setState(() {

                        });
                      },
                      itemBuilder: (_, index) {
                        return AnimatedBuilder(
                          animation: pageController,
                          builder: (ctx, child){
                            return child!;
                          },

                          child: Column(
                            children: [
                              Container(
                                height: 263,
                                width: 390,
                                child: Image.asset(
                                  'assets/img/slide_home1.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        );
                      }, itemCount: 2,),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.circle,
                          size: 10,
                          color: pageNo == index
                            ? Color(0xFF7D613B)
                            : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Apa yang ingin kamu sewa?',
                          style: TextStyle(
                            color: Color(0xFF7D613B),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFFDDD3C0),
                    margin: const EdgeInsets.all(14),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Girls",
                                  style: TextStyle(
                                    color: Color(0xFFDD7F00),
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Explore Fresh Kids Collection",
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/img/homepage/girls_img.png",
                            height: 100,
                          ),
                          IconButton(
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                            },
                            icon: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFFCDA0A0),
                    margin: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Boys",
                                  style: TextStyle(
                                    color: Color(0xFFE4006E),
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Explore Fresh Kids Collection",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/img/homepage/boys_img.png",
                          ),
                          IconButton(
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                            },
                            icon: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Color(0xFFDFCDCD),
                    margin: const EdgeInsets.all(14),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 40, 0, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Kebaya",
                                  style: TextStyle(
                                    color: Color(0xFF960101),
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Classy Take on Glam",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/img/homepage/kebaya_img.png",
                          ),
                          IconButton(
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                            },
                            icon: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '#ArticleRentara',
                          style: TextStyle(
                            color: Color(0xFF7D613B),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.black,
                    margin: const EdgeInsets.all(14),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Stack(
                            //alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(112,50,0,0),
                                child: Image.asset(
                                  "assets/img/homepage/article_img.png",
                                  fit: BoxFit.cover,
                                  //
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 5,
                                child: Text(
                                  "TAHUKAH KAMU",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 35,
                                child: Text(
                                  "Apa saja faktor keberagaman\nbangsa Indonesia?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 270,
                                bottom: 8,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ArticlePage(title: '',)),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    primary: Colors.black,
                                    backgroundColor: Color(0xBDD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                                  ),
                                  child: const Text(
                                    "Learn More",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '#InsideRentara',
                          style: TextStyle(
                            color: Color(0xFF7D613B),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 14, top: 14, right: 14),
                    height: 130,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 160,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/img/homepage/"+images.keys.elementAt(index),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: HomeAppText(
                                      text: images.values.elementAt(index),
                                      color: AppColors.textColor4,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),

                ],
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
