// Suggested code may be subject to a license. Learn more: ~LicenseLog:740782561.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2864482186.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3384808942.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:254465296.

import 'package:flutter/material.dart';
import 'package:myapp/widgets/info_3.dart';

class Info2 extends StatelessWidget {
  const Info2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the main content with Expanded
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 50.0,
            ), // Added vertical padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //progress indicator
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                //   padding: const EdgeInsets.only(bottom: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, //fixed
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffd9d9d9),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff358c72),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffd9d9d9),
                      ),
                    ),
                  ],
                ),

                //),
                // ganti bagian SingleChildScrollView + Column dengan ini:
                SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height,
                    ),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // pusat vertikal
                      children: [
                        // Image Stack
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/info_1_assets/buletKuning.png'),
                            Image.asset(
                              'assets/info_2_assets/kalkulator (1).png',
                            ),
                          ],
                        ),

                        const SizedBox(height: 13),

                        // Text "Predict Tomorrow. Today."
                        const Text(
                          "Predict Tomorrow. \n Today.",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0B54A3),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 10),

                        // Deskripsi
                        const Text(
                          "Start your business journey with data-driven decisions. "
                          "Monitor, plan, and boost your sales right from your hand.",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF313131),
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 30),

                        // Button "Selanjutnya"
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFF4E285),
                                Color.fromARGB(255, 255, 255, 255),
                                Color(0xFF96D8D4),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => const Info3(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: const Color(0xFF358C72),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                            ),
                            child: const Text(
                              "Selanjutnya",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
