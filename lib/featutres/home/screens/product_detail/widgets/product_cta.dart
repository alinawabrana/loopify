import 'package:flutter/material.dart';

class ProductCTA extends StatelessWidget {
  const ProductCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('CHAT WITH SELLER'),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextButton(onPressed: () {}, child: Text('REPORT')),
        ),
      ],
    );
  }
}
