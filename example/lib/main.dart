import 'package:flutter/material.dart';
import 'package:u_credit_card/u_credit_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("u_credit_card")),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: CreditCardUi(
            cardHolderFullName: 'John Doe',
            cardNumber: '1234567812345678',
            validThru: '01/28',
            cvvNumber: '123',
            isFloating: true,
            backgroundDecorationImage: DecorationImage(
              image: AssetImage("assets/chip.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
