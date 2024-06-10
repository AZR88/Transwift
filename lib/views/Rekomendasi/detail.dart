import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

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

              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/puma.jpg",
                  fit: BoxFit
                      .cover, // Ensures the image covers the entire container
                ),
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
                      " Papuma",
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
                  Center(
                    child: Text(
                      'PANTAI PAPUMA',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Deskripsi: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Pantai Papuma terkenal dengan pasir putihnya yang bersih dan batu karang yang eksotis. Pemandangan matahari terbit dan terbenam di pantai ini sangat memukau. Selain itu, pengunjung dapat menikmati kegiatan seperti berenang, berselancar, dan memancing.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(height: 1.5),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Aktivitas: ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Menikmati pemandangan, fotografi, berselancar, piknik, dan berkemah.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(height: 1.5),
                    ),
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(color: Colors.blue),
                          padding: EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
