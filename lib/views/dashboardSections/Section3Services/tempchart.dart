// ignore_for_file: unused_import, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/models/userdata.dart';
import 'package:http/http.dart' as http;

class UserTemperatureGraph extends StatefulWidget {
  const UserTemperatureGraph({Key? key}) : super(key: key);

  @override
  State<UserTemperatureGraph> createState() => _UserTemperatureGraphState();
}

class _UserTemperatureGraphState extends State<UserTemperatureGraph> {
  
  // ignore: non_constant_identifier_names
  void ExtractRequest() async {
    var url = Uri.parse('http://192.168.0.241:3000/extract');
    var queryParams = {"id": "w2343UDZvl4zY49bV9rb"};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var tempData = responseData["temp"];
    var respData = responseData["resp"]; // Store the "temp" array in a variable
    print(tempData);
    print(respData);
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 0),
              child: Image.asset("lib/assets/images/rate.gif",
                  height: 40, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                children: [
                  Text("TEMPERATURE TREND",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            // Add the ScatterChart inside a Container with constraints
            SizedBox(
              width: 270, // Set the desired width
              height: 85, // Set the desired height
              child: ScatterChart(
                ScatterChartData(
                  minX: 0,
                  minY: 0,
                  maxX: 5,
                  maxY: 40,
                  backgroundColor: Colors.black,
                  scatterSpots: [
                    ScatterSpot(1, 3),
                    ScatterSpot(2, 6),
                    ScatterSpot(3, 2),
                    ScatterSpot(4, 30),
                  ],
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: true),
                  gridData: const FlGridData(show: true),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
