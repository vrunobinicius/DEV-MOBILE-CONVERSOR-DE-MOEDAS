import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              iconEnabledColor: Colors.amber,
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
    );
  }
}
