import 'dart:io';
import 'package:my_cli_app/my_cli_app.dart' as my_cli_app;

void main(List<String> arguments) {
  for (final name in arguments) {
    final lucky = my_cli_app.Lucky();
    final nameCap = capFirstLetter(name);
    print('Hello $nameCap. Your lucky number is ${lucky.randomNumber}.');
  }
}

String capFirstLetter(String name) {
  return name[0].toUpperCase() + name.substring(1);
}

