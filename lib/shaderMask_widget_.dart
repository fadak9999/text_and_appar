// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ShaderMaskExample extends StatefulWidget {
  const ShaderMaskExample({super.key});

  @override
  State<ShaderMaskExample> createState() => _ShaderMaskExampleState();
}

class _ShaderMaskExampleState extends State<ShaderMaskExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(("ShaderMask")),
      ),
      backgroundColor: const Color.fromARGB(255, 177, 176, 173),
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
              tileMode: TileMode.clamp, // تغيير طريقة التجانب
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
      ),
    );
  }
}
