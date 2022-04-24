import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../atoms/input_otp.dart';
import '../helper/is_dark_mode.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool _isDarkMode = isDarkMode();

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: [
          Text(
            'Código de verificación',
            style: TextStyle(color: _isDarkMode ? Colors.grey : Colors.black),
          ),
          Text(
            'Ingresa el código que llego a tu correo electrónico',
            style: TextStyle(
              color: _isDarkMode ? Colors.grey : Colors.black54,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputOTP(),
              SizedBox(width: 6),
              InputOTP(),
              SizedBox(width: 6),
              InputOTP(),
              SizedBox(width: 6),
              InputOTP(),
            ],
          ),
        ],
      ),
    );
  }
}
