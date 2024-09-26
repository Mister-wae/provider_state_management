import 'package:flutter/material.dart';

class DriverProvider extends ChangeNotifier {
  // create variables
  bool? _isEligible;

  // getter
  bool? get isEligible => _isEligible;

  // function to check eligibility
  void checkEligible(String age) {
    if (age.isNotEmpty) {
      // parse String to integer
      int newAge = int.parse(age);

      //check eligibility with if-else
      if (newAge > 17) {
        _isEligible = true;
      } else {
        _isEligible = false;
      }
    }
    notifyListeners();
  }
}
