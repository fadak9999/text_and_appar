// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class preferrwdSize_Appar extends StatefulWidget {
  const preferrwdSize_Appar({super.key});

  @override
  State<preferrwdSize_Appar> createState() => _preferrwdSize_ApparState();
}

// ignore: camel_case_types
class _preferrwdSize_ApparState extends State<preferrwdSize_Appar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 100),
          child: Container(
            height: 120,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 249, 27, 27),
                  Color.fromARGB(255, 255, 179, 0),
                ]),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(1000),
                    topLeft: Radius.circular(600))),
            child: const SafeArea(
                child: Center(
              child: Text(
                "preferrwdSize_Appar",
                style: TextStyle(fontSize: 20),
              ),
            )),
          ),
        ),
        //////////////ShaderMask
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const RadialGradient(
                center: Alignment.topRight,
                radius: 1,
                colors: [
                  Color.fromARGB(255, 44, 7, 255),
                  Colors.purple,
                  Colors.red,
                ],
                tileMode: TileMode.mirror, // تغيير طريقة التجانب
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcIn, // تغيير وضع المزج
            child: const Text(
              "Hello",
              style: TextStyle(
                fontSize: 70,
              ),
            ),
          ),
        ));
  }
}
