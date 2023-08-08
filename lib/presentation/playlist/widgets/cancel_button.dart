import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steamy/core/constants.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        HapticFeedback.lightImpact();
        Navigator.of(context).pop();
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 2.0, color: kWhite),
      ),
      child: const Text(
        'Cancel',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}