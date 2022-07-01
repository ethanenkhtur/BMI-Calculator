import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: const SliderThemeData(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbColor: kBottomContainerColor,
          overlayColor: Color(0x1fEB1555),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF0e0a34),
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: const Color(0xFF0e0a34),
      ),
      home: const InputPage(),
    );
  }
}
