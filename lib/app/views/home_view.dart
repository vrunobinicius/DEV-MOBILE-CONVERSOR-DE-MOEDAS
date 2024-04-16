// ignore_for_file: prefer_const_constructors

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
          padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton(
                          value: 0,
                          isExpanded: true,
                          underline: Container(height: 1, color: Colors.amber),
                          items: [
                            DropdownMenuItem(
                              onTap: () {},
                              child: Text("Real"),
                              value: 0,
                            ),
                            DropdownMenuItem(
                              onTap: () {},
                              child: Text("data"),
                              value: 1,
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
