import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final TextEditingController amountController = TextEditingController();
  double convertedAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/convert.png',
              height: 400,
              width: 500,
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                children: [
                  TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter amount of dollars',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        double dollars =
                            double.tryParse(amountController.text) ?? 0;
                        convertedAmount = dollars * 304.31;
                      });
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text('Convert'),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Converted Amount: ${convertedAmount.toStringAsFixed(2)} Rs',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
