// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/homescreenwidgets/category_item.dart';
import '../../widgets/homescreenwidgets/mall.dart';
import '../chatScreens/main_chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.orange,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Karşılama Metni
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Hoşgeldin Patron !",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                //fontFamily: "Merienda"
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //Arama Alanı
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                //metin ikonu soldaki
                prefixIcon: Icon(
                  Icons.question_answer,
                ),
                //arama ikonu sağdaki
                suffixIcon: Icon(
                  Icons.search,
                ),
                iconColor: Colors.orange,
                hintText: "Bugün benden neler istiyorsun bakalım?",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green.shade700,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),

          //Katagoriler
          Container(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: 0,
            ),
            color: Colors.transparent,
            width: double.infinity,
            height: 60,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    catogoryTitle: "Alışveriş Mağazalarım",
                    isSelected: true,
                  ),
                  CategoryItem(
                    catogoryTitle: "Günlük Rutinlerim",
                    isSelected: false,
                  ),
                  CategoryItem(
                    catogoryTitle: "Takvim Planlamam",
                    isSelected: false,
                  ),
                  CategoryItem(
                    catogoryTitle: "Mesleki Ajandam",
                    isSelected: false,
                  ),
                  CategoryItem(
                    catogoryTitle: "Not Defterim",
                    isSelected: false,
                  ),
                  CategoryItem(
                    catogoryTitle: "Sosyal Medyam",
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ),

          //Alışveriş Mağazaları
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Mall(
                  mallImage: "assets/images/home_screen_images/Arabam_icon.png",
                  mallName: "Arabam.com",
                  mallDescription: "Araç Alım Satım Sayfası",
                  mallLikeRate: "80",
                ),
                Mall(
                  mallImage:
                      "assets/images/home_screen_images/Teknosa_icon.png",
                  mallName: "Teknosa",
                  mallDescription: "Türkiyenin Teknonoloji Mağazası",
                  mallLikeRate: "89",
                ),
                Mall(
                  mallImage:
                      "assets/images/home_screen_images/YemekSepeti_icon.png",
                  mallName: "Yemek Sepeti",
                  mallDescription: "Online Yemek Alışveriş Mağazası",
                  mallLikeRate: "87",
                ),
                Mall(
                  mallImage:
                      "assets/images/home_screen_images/Dominos_icon.png",
                  mallName: "DOMİNOS",
                  mallDescription: "Pizza Marketi",
                  mallLikeRate: "98",
                ),
                Mall(
                  mallImage:
                      "assets/images/home_screen_images/Sahibinden_icon.png",
                  mallName: "SAHİBİNDEN",
                  mallDescription: "Araç Ve Gereç Mağazası",
                  mallLikeRate: "95",
                ),
                Mall(
                  mallImage:
                      "assets/images/home_screen_images/Trendyol_icon.png",
                  mallName: "TRENDYOL",
                  mallDescription:
                      "Trendyol, merkezi İstanbul'da bulunan bir e-ticaret pazaryeri.",
                  mallLikeRate: "95",
                ),
                Mall(
                  mallImage: "assets/images/home_screen_images/Amazon_icon.png",
                  mallName: "AMAZON",
                  mallDescription: "Uluslararası Mağaza",
                  mallLikeRate: "95",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int sayfa = 0;
  static List<Widget> pageRouter = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    MainChatScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,

// Bar tasarımı yapılıyor..

//Body Burada
      body: Center(
        child: pageRouter.elementAt(sayfa),
      ),
      //Alt Bar Ekledim.
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.orange,
          selectedItemColor: Colors.green,
          currentIndex: sayfa,
          onTap: (value) {
            sayfa = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Telefon",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Ulak",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
          ]),
    );
  }
}
