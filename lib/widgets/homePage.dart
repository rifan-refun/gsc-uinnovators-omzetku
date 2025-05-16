import 'package:flutter/material.dart';
import'upload_dataUser.dart';
import 'chartPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          // child: Image.asset(
          //   'assets/logo.png', // Placeholder path for the logo
          //   // You might need to adjust the height or width
          //   // fit: BoxFit.contain,
          // ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Banner Image
                  Image.asset(
                    'assets/home_assets/home_banner.png',
                    // Adjust height and width as needed
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),

                  // Welcome Text
                  const Text(
                    'Good to See You, Jono!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Ready to make smarter business moves? Let\'s grow today.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),

                  // Filter Chips (Placeholders)
                  SizedBox(
                    height: 40, // beri tinggi supaya kontainer punya batas
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // Added this for horizontal scrolling Row
                        children: const [
                          Chip(label: Text('Company Performance')),
                          SizedBox(width: 8),
                          Chip(label: Text('Annual Overview')),
                          SizedBox(width: 8),
                          Chip(label: Text('Revenue Forecast')),
                          SizedBox(width: 8),
                          Chip(label: Text('News')),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Company Performance Card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Company Performance',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Understand what\'s working, what\'s not, and how to take your business to the next level. Get insights that help you take smarter steps forward.',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 15),
                        // Revenue Section
                        Row(
                          children: [
                            const Icon(Icons.monetization_on, color: Colors.green),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Revenue', style: TextStyle(fontSize: 14, color: Colors.grey)),
                                const Text('Rp. 12,999,0000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text('34% vs last period', style: TextStyle(fontSize: 12, color: Colors.green)),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    alignment: Alignment.centerRight,
                                  ),
                                  child: const Text('See Details', style: TextStyle(fontSize: 12)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        // Total Transaction and Growth Rate Sections
                        Row(
                          children: [
                            // Total Transaction
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(Icons.inventory_2, color: Colors.blue),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('TOTAL TRANSACTION', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('3409', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      Text('-5% from last period', style: TextStyle(fontSize: 10, color: Colors.red)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            // Growth Rate
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellow[100], // Light yellow background
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.trending_up, color: Colors.orange),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('GROWTH RATE', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                        Text('+ 5.2%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                        Text('weekly/monthly change', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        // Placeholder for 'See Details' link
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // todo : Implement See Details action
                            },
                            child: const Text('See Details'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Annual Overview Card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          // ignore: deprecated_member_use
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Annual Overview',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'See your progress, spot seasonal patterns, and make smarter plans with a full-year business overview.',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const SizedBox(height: 15),
                        // Top Selling Category and Top Selling Product Sections
                        Row(
                          children: [
                            // Top Selling Category
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(Icons.inventory_2, color: Colors.blue),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('TOP SELLING CATEGORY', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('Beverages', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      Text('of forecast achieved', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 15),
                            // Top Selling Product
                            Expanded(
                              child: Row(
                                children: [
                                  const Icon(Icons.bar_chart, color: Colors.blue),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('TOP SELLING PRODUCT', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                      Text('Jus Jeruk', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      Text('Highest revenue generator', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        // Total Product Sales Section
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100], // Light green background
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              const Icon(Icons.trending_up, color: Colors.green),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('TOTAL PRODUCT SALES', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                  Text('+ 5.2%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                  Text('weekly/monthly change', style: TextStyle(fontSize: 10, color: Colors.grey)),
                                ],
                              ),
                              // const Spacer(),
                              // TextButton(
                              //   onPressed: () {},
                              //   style: TextButton.styleFrom(padding: EdgeInsets.zero, minimumSize: Size.zero, tapTargetSize: MaterialTapTargetSize.shrinkWrap, alignment: Alignment.centerRight,),
                              //   child: const Text('See details', style: TextStyle(fontSize: 12)), // Adjusted text
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Placeholder for 'See Details' link
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // todo : Implement See Details action
                            },
                            child: const Text('See Details'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20), // Jarak antara Annual Overview dan kartu baru

                  // Kotak Dekorasi untuk Revenue Forecast
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ─────────────────────── Revenue Forecast ───────────────────────
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5, offset: Offset(0,3))],
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Revenue Forecast',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 5),
                              const Text(
                                'Predict future revenue based on historical data and market trends.',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(height: 15),

                              // Placeholder untuk grafik — ganti dengan widget chart sesungguhnya
                              Image.asset(
                                'assets/home_assets/grafik_prediksi.png',
                                fit: BoxFit.contain, // Use BoxFit.contain or adjust as needed
                              ),

                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text('See Details', style: TextStyle(fontSize: 12)),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ───────────────────────────── News ─────────────────────────────
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5, offset: Offset(0,3))],
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('News',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 5),
                              const Text(
                                'Stay updated with the latest industry news and market insights.',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(height: 10),

                              // List berita horizontal scroll
                              SizedBox(
                                height: 140, // beri tinggi supaya kontainer punya batas
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 250, // Set a fixed width for each news item container
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade300), // Optional border
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
                                              child: Image.asset('assets/home_assets/news_image_1.png',
                                                // Adjust image height as needed, ensures it fits without overflowing its container height
                                                height: 60,
                                                fit: BoxFit.cover,
                                                width: double.infinity,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Government Launches New Capital Assistance Program for MSMEs',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  SizedBox(height: 2),
                                                  Text(
                                                    'The Ministry of Cooperatives and SMEs has announced a business capital assistance program of up to 50 million rupiah for MSMEs affected by inflation.',
                                                    style: TextStyle(fontSize: 10, color: Colors.grey),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 10),

                                      // News Item 2 (Placeholder - Replace with similar Container structure)
                                      // Image.asset('assets/home_assets/news_image_2.png'),

                                      Container(
                                        width: 250, // Set a fixed width for each news item container
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade300), // Optional border
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
                                              child: Image.asset('assets/home_assets/news_image_2.png',
                                                // Adjust image height as needed, ensures it fits without overflowing its container height
                                                height: 60,
                                                fit: BoxFit.cover,
                                                width: double.infinity,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Local MSMEs see 3x turnover through digitalization',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  SizedBox(height: 2),
                                                  Text(
                                                    'This article discusses how inflation affects operational costs and consumer purchasing power for MSMEs.',
                                                    style: TextStyle(fontSize: 10, color: Colors.grey),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                      ),

                                      const SizedBox(width: 10),

                                      Container(
                                        width: 250, // Set a fixed width for each news item container
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey.shade300), // Optional border
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
                                              child: Image.asset('assets/home_assets/news_image_3.png',
                                                // Adjust image height as needed, ensures it fits without overflowing its container height
                                                height: 60,
                                                fit: BoxFit.cover,
                                                width: double.infinity,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Organic Vegetable MSMEs Record 40% Increase in Demand',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                  SizedBox(height: 2),
                                                  Text(
                                                    'A practical guide for MSMEs to utilize digital platforms to increase reach and sales.',
                                                    style: TextStyle(fontSize: 10, color: Colors.grey),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    // todo: Implement See More News
                                  },
                                  child: const Text('See More News'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}

Widget _buildBottomNavigationBar(BuildContext context) => Container(
  decoration: const BoxDecoration(
    color: Color(0xFF358C72), // Set the background color
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  ),
  padding: EdgeInsets.symmetric(vertical: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Icon(Icons.home, color: Colors.white),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UploadForecastPage()),
          );
        },
        child: Icon(Icons.upload, color: Colors.white),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StatisticsPage()),
          );
        },
        child: Icon(Icons.bar_chart, color: Colors.white),
      ),
      // GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => ProfilePage()),
      //       );
      //     },
      //     child: Icon(Icons.person, color: Colors.white)),
    ],
  ),
);
