import 'package:flutter/material.dart';
import 'homePage.dart';
import 'upload_dataUser.dart';
import 'history_chartPage.dart';
import 'product_chartPage.dart';// Import the HistoryPage

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  // Dropdown options
  final List<String> _granularityOptions = [
    'Daily',
    'Weekly',
    'Monthly',
    'Yearly',
  ];
  final List<String> _rangeOptions = [
    'Last 7 Days',
    'Last 14 Days',
    'Last 30 Days',
  ];

  // Selected values
  String _selectedGranularity = 'Monthly';
  String _selectedRange = 'Last 30 Days';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // --- Header ---
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: const [
                    Text(
                      'Statistics',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2F80ED),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.help_outline, color: Colors.grey),
                  ],
                ),
              ),

              // --- Tabs ---
              const TabBar(
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xFF27AE60),
                tabs: [
                  Tab(text: 'Report'),
                  Tab(text: 'History'),
                  Tab(text: 'Product'),
                ],
              ),

              // --- Tab views ---
              Expanded(
                child: TabBarView(
                  children: [
                    _buildReportTab(),
                    const HistoryTab(), // Replace with HistoryPage
                    const ProductTab(),
                  ],
                ),
              ),
            ],
          ),
        ),

        // --- Bottom Navigation Bar ---
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade700),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReportTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dropdown row
          Row(
            children: [
              // Granularity
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedGranularity,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  items:
                      _granularityOptions
                          .map(
                            (e) => DropdownMenuItem(value: e, child: Text(e)),
                          )
                          .toList(),
                  onChanged: (v) => setState(() => _selectedGranularity = v!),
                ),
              ),

              const SizedBox(width: 12),

              // Range
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedRange,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  items:
                      _rangeOptions
                          .map(
                            (e) => DropdownMenuItem(value: e, child: Text(e)),
                          )
                          .toList(),
                  onChanged: (v) => setState(() => _selectedRange = v!),
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Chart image
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/home_assets/grafik_prediksi.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Statistik cards
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 2.5,
            children: [
              _buildStatCard(
                'Total Revenue',
                'Rp. 12,999,000',
                Icons.receipt_long,
              ),
              _buildStatCard('Total Sales Volume', '1278', Icons.shopping_cart),
              _buildStatCard('Transactions', '513', Icons.swap_horiz),
              _buildStatCard(
                'Avg. Order Value',
                'Rp 87,650',
                Icons.account_balance_wallet,
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Top Selling Product
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Top Selling Product',
                    style: TextStyle(
                      color: Color(0xFF1472BC), // Change color here
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Import your sales or inventory file in just one click then get Instantly view predictions and business trends to plan ahead.",
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10),
                  Text('Bar Chart Placeholder (Top Selling)'),
                  SizedBox(height: 8),
                  Image.asset('assets/chartpage_assets/chart_high.png',
                      fit: BoxFit.fitWidth, width: double.infinity),
                  SizedBox(height: 6),

                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Lowest Selling Product',
                    style: TextStyle(
                      color: Color(0xFF1472BC),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Import your sales or inventory file in just one click then get Instantly view predictions and business trends to plan ahead.",
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10),
                  Text('Bar Chart Placeholder (Top Selling)'),
                  SizedBox(height: 8),
                  Image.asset('assets/chartpage_assets/chart_low.png', fit: BoxFit.fitWidth, width: double.infinity),

                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          // Categories Performance
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                const Text(
                  'Key Insights',
                  style: TextStyle(
                    color: Color(0xFF1472BC),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See the early insight for your bussiness decision.',
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('• Sales expected to peak in week 3'),
                    Text('• 30% of revenue predicted from Jus Jeruk'),
                    Text('• Higher demand anticipated during college season'),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF358C72),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                ),
            child: const Icon(Icons.home, color: Colors.white),
          ),
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => UploadForecastPage()),
                ),
            child: const Icon(Icons.upload, color: Colors.white),
          ),
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const StatisticsPage()),
                ),
            child: const Icon(Icons.bar_chart, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
