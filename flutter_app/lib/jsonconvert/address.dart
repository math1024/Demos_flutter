class Address {
  String city;
  List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson = parsedJson['streets'];
    List<String> streetsList = new List<String>.from(streetsFromJson);
    return new Address(
      city: parsedJson['city'],
      streets: streetsList,
    );
  }

  @override
  String toString() {
    return 'Address{city: $city, streets: $streets}';
  }
}
