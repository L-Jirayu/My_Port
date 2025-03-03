import 'package:flutter/material.dart';

class Savings extends StatefulWidget {
  const Savings({super.key});

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  final _income = TextEditingController();
  final _expenses = TextEditingController();

  double _total = 0.0;

  void cal_saving() {
    double income = double.parse(_income.text);
    double expenses = double.parse(_expenses.text);
    double total = income - expenses;
    setState(() {
      _total = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Income and Expenses Calculator',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500
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
              const SizedBox(height: 10.0),

              TextField(
                controller: _income,
                decoration: const InputDecoration(
                    labelText: 'รายได้', icon: Icon(Icons.trending_up)),
              ),

              const SizedBox(height: 5.0),

              TextField(
                controller: _expenses,
                decoration: const InputDecoration(
                    labelText: 'รายจ่าย', icon: Icon(Icons.payment)),
              ),

              const SizedBox(height: 25.0),

              TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed:  cal_saving,
                child: const Text('Calculate'),
              ),

              const SizedBox(height: 25.0),

             /* Text("คุณมีเงินเก็บ: $_total บาท",
                 style: TextStyle(
                    color: Colors.black,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w500,
                  )),*/

              if (_total < 0)
                Column(
                  children: [
                    Text("คุณมีเงินเก็บ: $_total บาท",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500,
                  )),
                    const Text(
                      "เดือนนี้คุณใช้เงินเยอะมาก ไม่มีเงินเก็บเลย",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset(
                      'assets/images/savings.jpg',
                      height: 400.0,
                      width: 400.0,
                    ),
                  ],
                ),

              if (_total > 0)
                Column(
                  children: [
                    Text("คุณมีเงินเก็บ: $_total บาท",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500,
                  )),
                    const Text(
                      "คุณประหยัดมากเกินไปแล้ว คุณมีเงินเก็บ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Image.asset(
                      'assets/images/paid.jpg',
                      height: 400.0,
                      width: 400.0,
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
