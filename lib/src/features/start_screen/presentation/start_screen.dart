import 'dart:ui';

import 'package:design_challenge/src/features/main_screen/presentation/main_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/hintergruende/bg_startscreen.png"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                height: 790,
                alignment: const Alignment(1, -0.40),
                child: Image.asset(
                  "assets/details/image.png",
                  height: 640,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child:
                      Image.asset("assets/details/T2.png", fit: BoxFit.fill)),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.hardEdge,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    width: 340,
                    height: 208,
                    padding: const EdgeInsets.all(30),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.009999999776482582),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Colors.white.withOpacity(0.30000001192092896),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 280,
                              child: Text(
                                'Feeling Snackish Today?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w900,
                                  height: 1,
                                  letterSpacing: 0.35,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              width: 280,
                              child: Text(
                                "Explore Angi's most popular snack selection and get instantly happy.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0x99EBEBF5),
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.08,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainScreen()));
                          },
                          child: Container(
                            width: 202,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 26, vertical: 14),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment(-1, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Color.fromARGB(255, 255, 34, 203),
                                  Color.fromARGB(255, 255, 84, 215)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color.fromARGB(126, 255, 74, 201),
                                  blurRadius: 30,
                                  offset: Offset(0, 10),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 121,
                                  child: Text(
                                    'Order Now',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.08,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 82,
            )
          ],
        ),
      ),
    );
  }
}
