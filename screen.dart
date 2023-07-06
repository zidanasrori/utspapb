import 'package:flutter/material.dart';

class BilanganPrima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muhammad Zidan Asrori Yusuf dengan absen genap'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade200,
              Colors.blue.shade400,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Bilangan Prima',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16.0),
                PrimeNumbersList(),
                SizedBox(height: 16.0),
                TextButton(
                  onPressed: () {
                    // Add button functionality here
                    print('Button pressed!');
                  },
                  child: Text(
                    'Push Me',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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

class PrimeNumbersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 22,
      itemBuilder: (context, index) {
        final primeNumber = (index * 2) + 3;
        return ListTile(
          title: Text(
            primeNumber.toString(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
