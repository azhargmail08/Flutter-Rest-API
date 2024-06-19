class UserLoc {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final UserStreet street;
  final LocationCoordinate coordinates;
  final UserTimezone timezone;

  UserLoc(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.street,
      required this.coordinates,
      required this.timezone});

  factory UserLoc.fromMap(Map<String, dynamic> json) {
    final coordinates = LocationCoordinate.fromMap(json['coordinates']);
    final street = UserStreet.fromMap(json['street']);
    final timezone = UserTimezone.fromMap(json['timezone']);
    return UserLoc(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      street: street,
      coordinates: coordinates,
      timezone: timezone,
    );
  }
}

class UserStreet {
  final int number;
  final String name;

  UserStreet({required this.number, required this.name});

  factory UserStreet.fromMap(Map<String, dynamic> json) {
    return UserStreet(
      name: json['name'],
      number: json['number'],
    );
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;

  LocationCoordinate({required this.latitude, required this.longitude});

  factory LocationCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationCoordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class UserTimezone {
  final String offset;
  final String description;

  UserTimezone({required this.offset, required this.description});

  factory UserTimezone.fromMap(Map<String, dynamic> json) {
    return UserTimezone(
        offset: json['offset'], description: json['description']);
  }
}
