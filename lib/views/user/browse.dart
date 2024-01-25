// ignore_for_file: unused_import, non_constant_identifier_names, avoid_print, prefer_const_constructors, sized_box_for_whitespace
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rotm/models/radarchart.dart';
import 'package:rotm/userdata.dart';

class UserBrowseMenu extends StatefulWidget {
  const UserBrowseMenu({super.key});

  @override
  State<UserBrowseMenu> createState() => _UserBrowseMenuState();
}

class _UserBrowseMenuState extends State<UserBrowseMenu> {
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    // Store the "temp" array in a variable
    UserRepoData = repoData;
    print(response.body);
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractUserRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "lib/assets/animated/magazine.gif",
              ),
            ),
            title: Text("BRoTM REPORT",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                )),
            automaticallyImplyLeading: false,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: SafeArea(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 870,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 255, 0, 0)),
                            height: 290,
                            width: MediaQuery.of(context).size.width - 240,
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("  STAT SCORES",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("PHYSICAL - 6/9",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("MENTAL - 6/9",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 20,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("SOCIAL - 6/9",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 20,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width - 240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(" OVERALL - 69",
                                          style: GoogleFonts.getFont(
                                            'Orbitron',
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                                255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 870,
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            height: 285,
                            width: 220,
                            child: RadarChartSample1(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
