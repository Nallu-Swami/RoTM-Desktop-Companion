import 'package:flutter/material.dart';

class SectionLevelThree extends StatefulWidget {
  const SectionLevelThree({super.key});

  @override
  State<SectionLevelThree> createState() => _SectionLevelThreeState();
}

class _SectionLevelThreeState extends State<SectionLevelThree> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            // Navigation to a Page
          },
          child: Container(
            height: 130,
            width: (130 * 2) + 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
