import 'package:flutter/material.dart';
import 'package:transwift/views/Booking/assets/jadwal.dart';
import 'package:transwift/views/Booking/detail_ticket.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        surfaceTintColor: Colors.white, // Set background color to pure white
        elevation: 4.0,
        shadowColor: const Color.fromARGB(255, 10, 10, 10)
            .withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailTicket()),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Sri Tanjung",
                  style: poppins16bold(),
                ),
              ),
              const Jadwal(),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Berangkat",
                  style: poppins14(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text(
                  "Rp, 350.000,00",
                  style: poppins16bold(),
                ),
              ),
              const Jadwal(),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 20),
                child: Text(
                  "pulang",
                  style: poppins14(),
                ),
              ),
            ],
          ),
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

TextStyle poppins14() {
  return const TextStyle(
    fontFamily: "poppins",
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1,
  );
}
