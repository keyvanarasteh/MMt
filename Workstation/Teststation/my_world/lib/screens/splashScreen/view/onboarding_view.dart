import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test00/screens/beginScreens/member_login_screen.dart';
import 'package:test00/screens/splashScreen/extensions/context_extension.dart';

import '../const/constants.dart';
import '../helper/bow.dart';
import 'onboarding_body_view.dart';
import 'onboarding_header_view.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  //Aabir Sarkar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnBoardingHeaderView(),
          const OnBoardingBodyView(),
          FadeInUp(
              duration: const Duration(milliseconds: 1000),
              delay: const Duration(milliseconds: 1500),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CustomPaint(
                  painter: Bow(
                    context.responsive(220),
                    context.responsive(320),
                    Colors.orange,
                  ),
                ),
              )),
          Positioned(
              bottom: context.responsive(28),
              right: 5,
              child: InkWell(
                child: FadeInUp(
                  duration: const Duration(milliseconds: 1200),
                  delay: const Duration(milliseconds: 1500),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MemberLoginScreen(),
                          ));
                    },
                    child: Row(
                      children: const [
                        Text('Başla',
                            style: TextStyle(
                              fontSize: 18,
                              color: scaffoldColor,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(width: 5),
                        Icon(
                          CupertinoIcons.right_chevron,
                          color: scaffoldColor,
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
