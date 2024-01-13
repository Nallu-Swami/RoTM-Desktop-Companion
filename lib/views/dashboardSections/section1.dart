import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:rotm/views/dashboardSections/Section1Services/blood_oxygen.dart';
import 'package:rotm/views/dashboardSections/Section1Services/heart_rate.dart';
import 'package:rotm/views/dashboardSections/Section1Services/sleep_cycle.dart';

class LevelOneSection extends StatefulWidget {
  const LevelOneSection({super.key});

  @override
  State<LevelOneSection> createState() => _LevelOneSectionState();
}

class _LevelOneSectionState extends State<LevelOneSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserHeartPulse(),
              );
            },
            openBuilder: (context, action) => const UserBloodOxygen(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 142, 47, 47),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserSleepCycle(),
              );
            },
            openBuilder: (context, action) => const UserBloodOxygen(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 142, 47, 47),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserBloodOxygen(),
              );
            },
            openBuilder: (context, action) => const UserBloodOxygen(),
          ),
        ),
      ],
    );
  }
}
