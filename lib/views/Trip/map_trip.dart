import 'package:flutter/material.dart';
import 'package:transwift/homepage_body.dart';
import 'package:transwift/views/trip/assets/Map_List.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: Container(
              width: 430,
              height: 350, // Adjusted height
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: 200,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0), // No border on top right
                    bottomLeft: Radius.circular(50), // No border on bottom left
                    bottomRight: Radius.circular(50),
                  ),
                  color: Colors.blue,
                ),

                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search, size: 40, color: Colors.white),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      " Nama Kota",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                )), //MAP
              )),
          Positioned(
            top: 350,
            right: 0,
            left: 0,
            child: Container(
              height: 500, // Adjusted height
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20), // No border on top right
                    bottomLeft: Radius.circular(0), // No border on bottom left
                    bottomRight: Radius.circular(0),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(
                    width: 430,
                    height: 300, // Adjusted height

                    child: List(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomepageBody()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(
                          255, 255, 255, 1), // Light gray background
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12), // Adjust padding as needed
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(
                              255, 255, 255, 255)), // Black text
                      minimumSize: const Size(150, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: const BorderSide(
                            color: Colors.blue,
                            width: 2.0), // Blue border with 2.0 width
                      ),
                    ),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
