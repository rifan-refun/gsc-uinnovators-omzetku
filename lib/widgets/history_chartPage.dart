import 'package:flutter/material.dart';
import 'chartPage.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  _HistoryTabState createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  // Dropdown options
  final List<String> _rangeOptions = ['Last 7 Days', 'Last 14 Days', 'Last 30 Days'];
  final List<String> _filterOptions = ['All', 'CSV Only', 'XLSX Only'];

  // Selected values
  String _selectedRange = 'Last 30 Days';
  String _selectedFilter = 'All';

  // Dummy data
  final List<Map<String, String>> _historyData = [
    {
      'file': 'sales_april.csv',
      'uploaded': '30 April 2025',
      'revenue': 'Rp 14.000.000',
      'topProduct': 'Jus Jeruk',
    },
    {
      'file': 'sales_march.csv',
      'uploaded': '30 March 2025',
      'revenue': 'Rp 12.000.000',
      'topProduct': 'Jus Alpukat',
    },
    {
      'file': 'sales_february.csv',
      'uploaded': '30 February 2025',
      'revenue': 'Rp 13.000.000',
      'topProduct': 'Jus Mangga',
    },
    {
      'file': 'sales_january.csv',
      'uploaded': '30 January 2025',
      'revenue': 'Rp 10.000.000',
      'topProduct': 'Jus Stroberi',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Dropdown row
          Row(
            children: [
              // Range dropdown
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedRange,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  items: _rangeOptions
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (v) => setState(() => _selectedRange = v!),
                ),
              ),
              const SizedBox(width: 12),
              // Filter dropdown
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _selectedFilter,
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  items: _filterOptions
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (v) => setState(() => _selectedFilter = v!),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // List of history cards
          Expanded(
            child: ListView.separated(
              itemCount: _historyData.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, idx) {
                final item = _historyData[idx];
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // File name
                      Text(
                        item['file']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 6),

                      // Details
                      Text('Uploaded On: ${item['uploaded']}',
                          style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      Text('Total Predicted Revenue: ${item['revenue']}',
                          style: const TextStyle(fontSize: 12, color: Colors.grey)),
                      Text('Top Selling Product: ${item['topProduct']}',
                          style: const TextStyle(fontSize: 12, color: Colors.grey)),

                      const SizedBox(height: 12),

                      // Buttons
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: Download action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                foregroundColor: Colors.black54,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('Download'),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: View Details action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade300,
                                foregroundColor: Colors.black54,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text('View Details'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
