import 'package:flutter/material.dart';
import 'package:transwift/views/Profile/Assets/widget_profile.dart';
import 'package:transwift/assets/NavBar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue,
          child: Stack(children: [
            Positioned(
              top: 135,
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
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 5),
                        child: Text(
                          "Nama",
                          style: poppins_16_semi(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: blue_border_white_bg(),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.perm_identity_rounded,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Bashori',
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ), // Add your content inside the container
                          // Add padding around the content
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 5),
                        child: Text(
                          "Email",
                          style: poppins_16_semi(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: blue_border_white_bg(),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.email_rounded,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                '222410102036@gmail,com',
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ), // Add your content inside the container
                          // Add padding around the content
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Text(
                          "Phone Number",
                          style: poppins_16_semi(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: blue_border_white_bg(),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.call,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                '081393418944',
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ), // Add your content inside the container
                          // Add padding around the content
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Text(
                          "Alamat",
                          style: poppins_16_semi(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: blue_border_white_bg(),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.location_on_rounded,
                                size: 20,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Tanggul',
                                style: poppins_12_w700_grey(),
                              ),
                            ],
                          ), // Add your content inside the container
                          // Add padding around the content
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: EditButton(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(child: Backbutton())
                    ]),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: const NavBar(
          selectedIndex: 2,
        ));
  }
}
