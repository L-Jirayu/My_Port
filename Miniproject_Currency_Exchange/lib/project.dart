import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/link.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  final fromController = TextEditingController();
  final toController = TextEditingController();

  String fromCurrency = 'THB';
  String toCurrency = 'USD';
  double rate = 0.0;

  final List<String> currencies = [
    'THB',
    'USD',
    'GBP',
    'EUR',
    'JPY',
    'HKD',
    'MYR',
    'SGD',
    'BND',
    'PHP',
    'IDR',
    'INR',
    'CHF',
    'AUD',
    'NZD',
    'CAD',
    'SEK',
    'DKK',
    'NOK',
    'CNY',
    // สามารถเพิ่มสกุลเงินอื่นๆได้ตามที่ต้องการ
  ];

  Future<void> convertCurrency() async {
    final response = await http.get(Uri.parse(
        'https://api.exchangerate-api.com/v4/latest/$fromCurrency')); //Currency Rate from Google Finance

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        rate = data['rates'][toCurrency];
        toController.text =
            (double.parse(fromController.text) * rate).toStringAsFixed(2);
      });
    } else {
      throw Exception('Failed to load exchange rate');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Currency Exchange Calculator',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: fromController,
                decoration: InputDecoration(labelText: 'Amount in $fromCurrency'),
                keyboardType: TextInputType.number,
              ),

              DropdownButton<String>(
                value: fromCurrency,
                onChanged: (String? newValue) {
                  setState(() {
                    fromCurrency = newValue!;
                  });
                },
                items: currencies.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20.0),
              const Icon(Icons.arrow_downward),

              TextField(
                controller: toController,
                decoration: InputDecoration(labelText: 'Amount in $toCurrency'),
                readOnly: true,
              ),

              DropdownButton<String>(
                value: toCurrency,
                onChanged: (String? newValue) {
                  setState(() {
                    toCurrency = newValue!;
                  });
                },
                items: currencies.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              const SizedBox(height: 20.0),

              TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: convertCurrency,
                child: const Text('Convert'),
              ),

              const SizedBox(height: 40.0),
              if (rate > 0)
                Text(
                  '" Current Rate: 1 $fromCurrency = $rate $toCurrency "',
                  style: const TextStyle(fontSize: 20.0),
                ),
              if (rate > 0)
                Image.asset('assets/images/money.jpg', height: 400.0, width: 400.0,), 

              const SizedBox(height: 50.0),
              Row(
                children: [
                  const Text('Reference:'),
                  Link(
                    uri: Uri.parse('https://www.google.com/finance/'),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => TextButton(
                      onPressed: followLink,
                      child: const Text(
                        'https://www.google.com/finance/',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
