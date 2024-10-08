import 'package:flutter/material.dart';
import 'package:i_am_rich/styled_body_text.dart';

class PhotographyGear extends StatefulWidget {
  const PhotographyGear({super.key});

  @override
  State<PhotographyGear> createState() => _PhotographyGearState();
}

class _PhotographyGearState extends State<PhotographyGear> {
  bool availability = true;

  void bodyAvailability() {
    setState(() {
      availability = !availability;
    });
    print('body availability');
  }

  void lensAvailability() {
    print('lens availability');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        const StyledBodyText('Camera body:'),
        const StyledBodyText('A7III'),
        Image.asset(
          'Assets/img/423081_2.webp',
          width: 40,
          height: 40,
          color: Colors.deepOrange[300],
          colorBlendMode: BlendMode.darken,
        ),
        const Expanded(child: SizedBox()),
        FilledButton(
          style: FilledButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.red),
          onPressed: bodyAvailability,
          child: Text(availability ? "available" : "not available"),
        )
      ]),
      Row(children: [
        const StyledBodyText('Lenses:'),
        const StyledBodyText('Viltrox 85mm'),
        Image.asset(
          'Assets/img/lens.webp',
          width: 40,
          height: 40,
          color: Colors.deepOrange[300],
          colorBlendMode: BlendMode.darken,
        ),
        const Expanded(child: SizedBox()),
        FilledButton(
          style: FilledButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.red),
          onPressed: bodyAvailability,
          child: const Text('Available'),
        )
      ]),
    ]);
  }
}
