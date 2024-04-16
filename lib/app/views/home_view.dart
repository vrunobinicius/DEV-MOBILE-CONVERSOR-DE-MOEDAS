import 'package:conversor_de_moedas/components/currency_box.dart';
import 'package:conversor_de_moedas/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController? toText = TextEditingController();

  final TextEditingController? fromText = TextEditingController();

  HomeController? homeController;
  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 90),
              CurrencyBox(
                items: homeController?.currencies,
                controller: toText,
                selectedItem: homeController?.toCurrency,
                onChanged: (model) {
                  setState(() {
                    if (homeController!.fromCurrency != model) {
                      homeController!.toCurrency = model!;
                    }
                  });
                },
              ),
              CurrencyBox(
                items: homeController?.currencies,
                controller: fromText,
                selectedItem: homeController?.fromCurrency,
                onChanged: (model) {
                  setState(() {
                    if (homeController!.toCurrency != model) {
                      homeController!.fromCurrency = model!;
                    }
                  });
                },
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                  onPressed: () {
                    homeController!.convert();
                  },
                  child: Text("CONVERTER"))
            ],
          ),
        ),
      ),
    );
  }
}
