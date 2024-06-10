// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:transwift/views/Profile/Assets/edit.dart';
import 'package:transwift/assets/NavBar.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';

class accountEdit extends StatelessWidget {
  const accountEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 135,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "My Account",
                        style: poppins_30_semi_white(),
                      ),
                    ),
                    const Center(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama",
                            style: poppins_16_semi(),
                          ),
                          const SizedBox(height: 10),
                          const Edit(
                            label: "Nama",
                            icon: Icons.person,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Email",
                            style: poppins_16_semi(),
                          ),
                          const SizedBox(height: 10),
                          const Edit(
                            label: "Email",
                            icon: Icons.email,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Phone Number",
                            style: poppins_16_semi(),
                          ),
                          const SizedBox(height: 10),
                          const Edit(
                            label: "Phone Number",
                            icon: Icons.phone,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Alamat",
                            style: poppins_16_semi(),
                          ),
                          const SizedBox(height: 10),
                          const Edit(
                            label: "Alamat",
                            icon: Icons.location_on,
                          ),
                          const SizedBox(height: 30),
                          const Center(
                            child: Donebutton(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(selectedIndex: 2),
    );
  }
}
