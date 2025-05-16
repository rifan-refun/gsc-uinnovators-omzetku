import 'package:flutter/material.dart';
import 'chartPage.dart';

class ProductTab extends StatefulWidget {
  const ProductTab({Key? key}) : super(key: key);

  @override
  _ProductTabState createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
  // Dropdown options
  final List<String> _products = ['Jus Jeruk', 'Jus Alpukat', 'Jus Mangga'];
  String _selectedProduct = 'Jus Jeruk';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Select Product Dropdown ─────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedProduct,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Select Product',
                contentPadding: EdgeInsets.zero,
              ),
              items: _products
                  .map((p) => DropdownMenuItem(value: p, child: Text(p)))
                  .toList(),
              onChanged: (v) => setState(() => _selectedProduct = v!),
            ),
          ),

          const SizedBox(height: 24),

          // ─── Title Weekly Sales Trend ────────────────────────────
          const Text(
            'Weekly Sales Trend',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F80ED),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Import your sales or inventory file in just one click then get instantly view predictions and business trends to plan ahead.',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),

          const SizedBox(height: 16),

          // ─── Chart Placeholder ───────────────────────────────────
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset('assets/product_chartPage_assets/product_trend_chart.png',fit: BoxFit.fitWidth,
                width: double.infinity),
          ),

          const SizedBox(height: 20),

          // ─── Stats Cards ─────────────────────────────────────────
          Wrap(
            runSpacing: 12,
            spacing: 12,
            children: [
              _statCard(
                title: 'Total Revenue',
                value: 'Rp 1,376,000',
                icon: Icons.receipt_long,
                color: Colors.white,
              ),
              _statCard(
                title: 'Total Sales Volume',
                value: '118',
                icon: Icons.attach_money,
                color: Colors.white,
              ),
              _statCard(
                title: 'Profit Margin',
                value: 'Rp 576,000',
                icon: Icons.favorite,
                color: const Color(0xFF27AE60),
                textColor: Colors.white,
              ),
              _statCard(
                title: 'Return Rate',
                value: '3%',
                icon: Icons.rotate_left,
                color: Colors.white,
              ),
              _statCard(
                title: 'Comparison',
                value: '12% Better',
                icon: Icons.compare_arrows,
                color: Colors.white,
              ),
              _statCard(
                title: 'Popularity',
                value: '1st',
                icon: Icons.emoji_events,
                color: const Color(0xFFF2C94C),
              ),
            ],
          ),

          const SizedBox(height: 24),

          // ─── Download Button ─────────────────────────────────────
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                // TODO: implement download PDF
              },
              icon: const Icon(Icons.download),
              label: const Text('Download Product Report (PDF)'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2F80ED),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statCard({
    required String title,
    required String value,
    required IconData icon,
    Color color = Colors.white,
    Color textColor = Colors.black87,
  }) {
    return Container(
      width: (MediaQuery.of(context).size.width - 16 * 2 - 12) / 2,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: textColor),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 12, color: textColor)),
                const SizedBox(height: 4),
                Text(value,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: textColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
