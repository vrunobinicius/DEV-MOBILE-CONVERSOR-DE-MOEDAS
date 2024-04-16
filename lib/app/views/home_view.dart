// ignore_for_file: prefer_const_constructors

import 'package:conversor_de_moedas/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 195, bottom: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
              CurrencyBox(),
              CurrencyBox(),
              SizedBox(height: 50),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                  onPressed: () {},
                  child: Text("CONVERTER"))
            ],
          ),
        ),
      ),
    );
  }
}
