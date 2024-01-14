import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserTemperature extends StatefulWidget {
  const UserTemperature({super.key});

  @override
  State<UserTemperature> createState() => _UserTemperatureState();
}

class _UserTemperatureState extends State<UserTemperature> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 0),
              child: Image.asset("lib/assets/animated/thermometer.gif",
                  height: 45, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("BODY",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("TEMPRATURE",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            const Column(
              children: [
                Center(
                    child: Text("32",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)))),
                Text("°C",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
            Column(
              children: [
                Image.asset("lib/assets/images/thermometer.png",
                    height: 55, width: 45)
              ],
            ),
            const Column(
              children: [
                Center(
                    child: Text("40°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red))),
                Center(
                    child: Text("35°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange))),
                Center(
                    child: Text("30°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 115, 215)))),
              ],
            ),
          ],
        )
      ],
    );
  }
}
