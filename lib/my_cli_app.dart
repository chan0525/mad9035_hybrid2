import 'dart:io';
import 'dart:math';

class Lucky {
  int? randomNumber;

  Lucky() {

    final minVal = Platform.environment['MIN'];
    final maxVal = Platform.environment['MAX'];

    final min = minVal != null ? int.parse(minVal) : 1;
    final max = maxVal != null ? int.parse(maxVal) : 100;

    final _random = Random();
    randomNumber = min + _random.nextInt(max - min);

  }


}