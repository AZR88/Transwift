import 'package:flutter/material.dart';
import 'package:transwift/views/Booking/assets/jadwal.dart';
import 'package:transwift/views/Booking/assets/button.dart';

class DetailTicket extends StatelessWidget {
  const DetailTicket({super.key});

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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    const Center(
                      child: Text(
                        "Payment",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Sri Tanjung",
                        style: poppins16bold(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Jadwal(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Berangkat",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Jadwal(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        "Pulang",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Price",
                        style: poppins16bold(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Rp. 350.000,00",
                        style: poppins16bold(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Payment Method",
                        style: poppins16bold(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: RadioButton(),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Center(
                      child: ButtonNext(),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle poppins16bold() {
  return const TextStyle(
    fontFamily: "poppins",
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 1,
  );
}
