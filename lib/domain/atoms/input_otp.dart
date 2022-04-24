import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputOTP extends StatelessWidget {
  const InputOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: CupertinoTextField(
        placeholder: '0',
        style: const TextStyle(fontSize: 24),
        padding: const EdgeInsets.symmetric(vertical: 16),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.1),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blueAccent),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (String value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
