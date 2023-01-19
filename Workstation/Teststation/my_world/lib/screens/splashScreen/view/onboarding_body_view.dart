import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import './/screens/splashScreen/extensions/context_extension.dart';

class OnBoardingBodyView extends StatelessWidget {
  const OnBoardingBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: context.responsive(400),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 1000),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 20),
                children: [
                  TextSpan(
                      text: 'My',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                      text: 'World',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          FadeInUp(
            duration: const Duration(milliseconds: 1300),
            child: const Text(
              'Sizin dünyanız burada...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ),
          const SizedBox(height: 10),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: const Text(
              'Yapımcılar:\nMuratcan ŞEN 191216007 \nMert KAYA 191216019',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
