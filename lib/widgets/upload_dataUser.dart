import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:myapp/widgets/chartPage.dart';
import 'package:file_picker/file_picker.dart'; // Import file_picker
import 'dart:io';

import 'homePage.dart';

class UploadForecastPage extends StatefulWidget {
  @override
  _UploadForecastPageState createState() => _UploadForecastPageState();
}

class _UploadForecastPageState extends State<UploadForecastPage> {
  String? _selectedPredictionPeriod;
  String? _selectedGranularity;
  bool _bestSelling = false;
  bool _totalRevenue = false;
  bool _productCategories = false;
  File? _selectedFile; // To store the selected file

  // Function to handle file picking
  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple : true,
        type: FileType.custom,
        allowedExtensions: ['xlsx', 'csv'],
      );

      if (result != null) {
        setState(() {
          _selectedFile = File(result.files.single.path!);
        });
        // You can now do something with the selected file,
        // for example, display its name or start processing it.
        print('File picked: ${_selectedFile!.path}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('File selected: ${_selectedFile!.path.split('/').last}')),
        );
      } else {
        // User canceled the picker
        print('User canceled the file picker');
      }
    } catch (e) {
      // Handle any errors
      print('Error picking file: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking file: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sales Forecast Generate",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),

              const SizedBox(height: 5),
              const Text(
                "Import your sales or inventory file in just one click then get Instantly view predictions and business trends to plan ahead.",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 15),
              _buildUploadSection(),
              const SizedBox(height: 20),
              _buildPredictionOptions(),
              const SizedBox(height: 20),
              _buildGranularityDropdown(),
              const SizedBox(height: 20),
              _buildFocusCheckboxes(),
              const SizedBox(height: 20),
              _buildGenerateButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUploadSection() {
    return Column(
      children: [
        // Header hijau dengan tombol Upload
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: InkWell(
            // Wrap with InkWell for tap functionality and call _pickFile
            onTap: _pickFile,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.upload, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  "Upload Data",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Area drag & drop dengan border putus-putus
        DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(20),
          dashPattern: const [6, 4],
          color: Colors.grey,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                const Icon(Icons.attach_file, size: 40, color: Colors.grey),
                const SizedBox(height: 8),
                const Text(
                  "or drag and drop your file here",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Accepted formats: .csv, .xlsx",
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPredictionOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Set Forecasting Parameters",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        RadioListTile<String>(
          title: const Text("Next Week"),
          value: "week",
          groupValue: _selectedPredictionPeriod,
          onChanged:
              (value) => setState(() => _selectedPredictionPeriod = value),
        ),
        RadioListTile<String>(
          title: const Text("Next Month"),
          value: "month",
          groupValue: _selectedPredictionPeriod,
          onChanged:
              (value) => setState(() => _selectedPredictionPeriod = value),
        ),
      ],
    );
  }

  Widget _buildGranularityDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Set Granularity",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          hint: const Text("Granularity"),
          value: _selectedGranularity,
          items:
              ['a', 'b', 'c']
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.toUpperCase()),
                    ),
                  )
                  .toList(),
          onChanged: (value) => setState(() => _selectedGranularity = value),
        ),
      ],
    );
  }

  Widget _buildFocusCheckboxes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Focus Variable",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        CheckboxListTile(
          title: const Text("Best selling products"),
          value: _bestSelling,
          onChanged: (val) => setState(() => _bestSelling = val!),
        ),
        CheckboxListTile(
          title: const Text("Total revenue"),
          value: _totalRevenue,
          onChanged: (val) => setState(() => _totalRevenue = val!),
        ),
        CheckboxListTile(
          title: const Text("Specific product categories"),
          value: _productCategories,
          onChanged: (val) => setState(() => _productCategories = val!),
        ),
      ],
    );
  }

  Widget _buildGenerateButton() {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.trending_up),
        label: const Text("Generate Sales"),
        onPressed: () {
          // Your forecasting logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() => Container(
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
}
