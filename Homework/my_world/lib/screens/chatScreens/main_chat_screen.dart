// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, avoid_print

import 'package:flutter/material.dart';

import 'chat_info_screen.dart';
import 'chat_persons_screen.dart';
import 'common/appbar.dart';
import 'conversations_screen.dart';
import 'post_categories_screen.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});

  @override
  State<MainChatScreen> createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  bool chatinfoVisible = false;
  bool postcategoryVisible = false;

  checkDevices(double width) {
//Ekran bouylatlarına göre şartlama
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    //var scrHeight = MediaQuery.of(context).size.height;

    var deviceTtpye = checkDevices(scrWidth);

    Widget buildMainArea() {
//Eğer mobilse
      if (deviceTtpye == 'mobile') {
        return ConversationsScreen();
      }

//Eğer tablet ise
      else if (deviceTtpye == 'tablet') {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: ChatsScreen(),
                  ),
                  Expanded(
                    flex: 7,
                    child: ConversationsScreen(),
                  ),
                ],
              ),
            ),
            postcategoryVisible || chatinfoVisible
                ? Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Color.fromARGB(55, 0, 0, 0),
                    ),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
            postcategoryVisible
                ? Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: 275,
                    child: PostCategoriesScreen(),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
            chatinfoVisible
                ? Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: 275,
                    child: ChatInfoScreen(),
                  )
                : Positioned(
                    top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
          ],
        );
      }
//Eğer masaüstü ise
      else if (deviceTtpye == 'desktop') {
        return Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: PostCategoriesScreen(),
                ),
                Expanded(
                  flex: 4,
                  child: ChatsScreen(),
                ),
                Expanded(
                  flex: 5,
                  child: ConversationsScreen(),
                ),
              ],
            ),
          ),
          postcategoryVisible || chatinfoVisible
              ? Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    color: Color.fromARGB(55, 0, 0, 0),
                  ),
                )
              : Positioned(
                  top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
          chatinfoVisible
              ? Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  width: 275,
                  child: ChatInfoScreen(),
                )
              : Positioned(
                  top: 0, left: 0, width: 0, height: 0, child: SizedBox()),
        ]);
      }
//Eğer daha büyükse
      else {
        return Row(
          children: [
            Expanded(
              flex: 4,
              child: PostCategoriesScreen(),
            ),
            Expanded(
              flex: 5,
              child: ChatsScreen(),
            ),
            Expanded(
              flex: 6,
              child: ConversationsScreen(),
            ),
            Expanded(
              flex: 5,
              child: ChatInfoScreen(),
            ),
          ],
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          AppHeader(
//PostCategory (Mesaj Kategorilerine tıklandığında)
            onPostCategoryClicked: () {
              print(postcategoryVisible);
              if (postcategoryVisible) {
                setState(() {
                  postcategoryVisible = false;
                  chatinfoVisible = false;
                });
              } else {
                setState(() {
                  postcategoryVisible = true;
                  chatinfoVisible = false;
                });
              }
            },
//ChatInfo (Chat Bilgilerine tıklandığında)
            onChatInfoClicked: () {
              print(chatinfoVisible);
              if (chatinfoVisible) {
                setState(() {
                  postcategoryVisible = false;
                  chatinfoVisible = false;
                });
              } else {
                setState(() {
                  postcategoryVisible = false;
                  chatinfoVisible = true;
                });
              }
            },
          ),
          Expanded(
            child: buildMainArea(),
          )
        ],
      ),
    );
  }
}
