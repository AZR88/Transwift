import 'package:flutter/material.dart';
import 'package:transwift/views/Profile/account.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';
import 'package:transwift/views/Profile/callcenter.dart';
import 'package:transwift/assets/NavBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                top: 115,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                        Text(
                          "Bashori",
                          style: poppins_30_semi(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Account()),
                            ),
                            child: Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .black, // Change underline color
                                      width: 2.0, // Change underline thickness
                                    ),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.perm_identity_rounded,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Account"),
                                    SizedBox(),
                                    Icon(
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
                              MaterialPageRoute(
                                  builder: (context) => const CallCenter()),
                            ),
                            child: Container(
                                height: 30,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .black, // Change underline color
                                      width: 2.0, // Change underline thickness
                                    ),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.support_agent,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Call Center"),
                                    SizedBox(),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 25,
                                    )
                                  ],
                                ) // Add padding for content spacing
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        const Center(
                            child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 40, right: 40),
                          child: Logout(),
                        ))
                      ],
                    ),
                  ))
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(
          selectedIndex: 2,
        ));
  }
}

// ignore: non_constant_identifier_names
TextStyle poppins_30_semi() {
  return const TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    fontSize: 30,
    letterSpacing: 1,
  );
}
