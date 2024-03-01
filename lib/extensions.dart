import 'dart:io';

double readDouble(String prompt) {
  print(prompt);
  return double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
}

int readInt(String prompt) {
  print(prompt);
  return int.tryParse(stdin.readLineSync() ?? '') ?? 0;
}
