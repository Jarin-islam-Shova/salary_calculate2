import 'package:flutter/material.dart';

void main() {
  runApp(SalaryCalculatorApp());
}

class SalaryCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SalaryCalculatorScreen(),
    );
  }
}

class SalaryCalculatorScreen extends StatefulWidget {
  @override
  _SalaryCalculatorScreenState createState() => _SalaryCalculatorScreenState();
}

class _SalaryCalculatorScreenState extends State<SalaryCalculatorScreen> {
  final TextEditingController _hourController = TextEditingController();
  String _amount = '';

  void _calculateSalary() {
    final int hours = int.tryParse(_hourController.text) ?? 0;
    int salary = 0;

    if (hours <= 40) {
      salary = hours * 400;
    } else {
      salary = (40 * 400) + ((hours - 40) * 600);
    }

    setState(() {
      _amount = 'Tk $salary';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salary Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _hourController,
              decoration: InputDecoration(
                labelText: 'Enter Hour',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateSalary,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Amount: $_amount',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
