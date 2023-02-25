class Binary {
  late String value;
  late int from;
  late int to;

  // binary converter

  _binToHex() {
    return 'test only';
  }

  _binToOctal() {}

  // decimal convert

  _decToBin() {}

  _decToOctal() {}

  _decToHex() {}

  // octal convert

  _octToBin() {}

  _octToDec() {}

  _octToHex() {}

  // hex convert

  _hexToBin() {}

  _hexToDec() {}

  _hexToOct() {}

  String useBinaryConverter(String v, int f, int t) {
    print("$v,$f,$t");
    var result = 'test';

    value = v;
    from = f;
    to = t;

    if (f == 0 && t == 1) {
      result = _binToHex();
    } else if (from == 0 && to == 1) {
    } else if (from == 0 && to == 2) {
    } else if (from == 0 && to == 3) {
    } else if (from == 1 && to == 0) {
    } else if (from == 1 && to == 2) {
    } else if (from == 1 && to == 3) {
    } else if (from == 2 && to == 0) {
    } else if (from == 2 && to == 1) {
    } else if (from == 2 && to == 3) {
    } else if (from == 3 && to == 0) {
    } else if (from == 3 && to == 1) {
    } else if (from == 3 && to == 2) {}

    return result;
  }
}
