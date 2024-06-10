import 'package:flutter/material.dart';
import 'package:transwift/views/trip/map_trip.dart';

// ignore: camel_case_types
class CardHistory extends StatelessWidget {
  const CardHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 400.0,
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(
                  0.3), // Adjust opacity for desired shadow intensity
              spreadRadius: 5.0, // Adjust spreadRadius for shadow diffusion
              blurRadius: 7.0, // Adjust blurRadius for shadow softness
              offset:
                  const Offset(0.0, 4.0), // Adjust offset for shadow position (x, y)
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: const Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Pantai Papuma",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 20),
              child: Container(
                width: 400,
                height: 1,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, right: 20, top: 10),
              child: Text(
                "10-2-24",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200, right: 10, top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Map()),
                  );
                },
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Detail",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
