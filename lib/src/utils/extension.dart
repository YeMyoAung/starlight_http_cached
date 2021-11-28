part of starlight_http_cached;

extension _StarlightHttpCachedStringExtension on String {
  // String decode() => json.decode(encode());

  // String encode() => json.encode(this);
}

extension _StarlightHttpCachedIntExtension on int {
  // // int decode() => json.decode(encode());

  String encode() => json.encode(this);
}

extension _StarlightHttpCachedDoubleExtension on double {
  // // double decode() => json.decode(encode());

  String encode() => json.encode(this);
}

extension _StarlightHttpCachedBoolExtension on bool {
  // // bool decode() => json.decode(encode());

  String encode() => json.encode(this);
}

extension _StarlightHttpCachedListExtension on List {
  // // List decode() => json.decode(encode());

  String encode() => json.encode(this);
}

extension _StarlightHttpCachedMapSDExtension on Map {
  // // Map decode() => json.decode(encode());

  String encode() => json.encode(this);
}
