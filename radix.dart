
String decimalToBinary(int decimal) {
  return decimal.toRadixString(2);
}


int binaryToDecimal(String binary) {
  return int.parse(binary, radix: 2);
}


String decimalToOctal(int decimal) {
  return decimal.toRadixString(8);
}


int octalToDecimal(String octal) {
  return int.parse(octal, radix: 8);
}


String octalToBinary(String octal) {
  int decimalValue = octalToDecimal(octal);
  return decimalToBinary(decimalValue);
}

String decimalToHex(int decimal) {
  return decimal.toRadixString(16).toUpperCase();
}

int hexToDecimal(String hex) {
  return int.parse(hex, radix: 16);
}

// h) Hexa Number - Binary Conversion
String hexToBinary(String hex) {
  int decimalValue = hexToDecimal(hex);
  return decimalToBinary(decimalValue);
}

void main() {
  
  int decimalNumber = 42;
  String binaryResult = decimalToBinary(decimalNumber);
  print('$decimalNumber in binary: $binaryResult');

  String binaryNumber = '101010';
  int decimalResult = binaryToDecimal(binaryNumber);
  print('$binaryNumber in decimal: $decimalResult');

  String octalResult = decimalToOctal(decimalNumber);
  print('$decimalNumber in octal: $octalResult');

  String octalNumber = '52';
  int decimalFromOctal = octalToDecimal(octalNumber);
  print('$octalNumber in decimal: $decimalFromOctal');

  String octalToBinaryResult = octalToBinary(octalNumber);
  print('$octalNumber in binary: $octalToBinaryResult');

  String hexResult = decimalToHex(decimalNumber);
  print('$decimalNumber in hex: $hexResult');

  String hexNumber = '2A';
  int decimalFromHex = hexToDecimal(hexNumber);
  print('$hexNumber in decimal: $decimalFromHex');

  String hexToBinaryResult = hexToBinary(hexNumber);
  print('$hexNumber in binary: $hexToBinaryResult');
}

