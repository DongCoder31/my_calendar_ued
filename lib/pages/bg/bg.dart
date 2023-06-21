import 'package:flutter/material.dart';

class BgWidget extends StatelessWidget {
  const BgWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroud.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        child
      ],
    );
  }
}
