import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '/screens/splashScreen/extensions/context_extension.dart';

class OnBoardingHeaderView extends StatelessWidget {
  const OnBoardingHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                  child: Container(
                height: context.responsive(250),
                width: context.responsive(250),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
              )),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                  child: Transform.rotate(
                angle: 6.30,
                child: SizedBox(
                  height: context.responsive(250),
                  child: Image.asset('appico/playstore.png'),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
