import 'package:flutter/material.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';
import 'package:transwift/views/Profile/profile.dart';
import 'package:transwift/assets/NavBar.dart';

class CallCenter extends StatelessWidget {
  const CallCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Positioned(
              top: 95,
              right: 0,
              left: 0,
              child: Container(
                height: 1000, // Adjusted height
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20), // No border on top right
                      bottomLeft:
                          Radius.circular(0), // No border on bottom left
                      bottomRight: Radius.circular(0),
                    ),
                    color: Colors.white),
              ),
            ),
            Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "callcenter",
                        style: poppins_30_semi(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Profile()),
                        ),
                        child: Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:
                                      Colors.black, // Change underline color
                                  width: 2.0, // Change underline thickness
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.support_agent,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Connect Live Chat",
                                  style: poppins_20_semi(),
                                ),
                                const SizedBox(),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 25,
                                )
                              ],
                            ) // Add padding for content spacing
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Profile()),
                        ),
                        child: Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:
                                      Colors.black, // Change underline color
                                  width: 2.0, // Change underline thickness
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.email_rounded,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Hit Our Email Us",
                                  style: poppins_20_semi(),
                                ),
                                const SizedBox(),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 25,
                                )
                              ],
                            ) // Add padding for content spacing
                            ),
                      ),
                    ),
                    const SizedBox(
                      height: 400,
                    ),
                    const Center(
                        child: Padding(
                      padding:
                          EdgeInsets.only(top: 0, left: 40, right: 40),
                      child: Backbutton(),
                    ))
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(
        selectedIndex: 2,
      ),
    );
  }
}

// ignore: non_constant_identifier_names
TextStyle poppins_30_semi() {
  return const TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 30,
      letterSpacing: 1,
      color: Colors.white);
}

// ignore: non_constant_identifier_names
TextStyle poppins_20_semi() {
  return const TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 1,
  );
}
