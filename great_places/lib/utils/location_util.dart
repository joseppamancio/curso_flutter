import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class LocationUtil {
  Future<String?> generateLocationPreviewImage({
    required double latitude,
    required double longitude,
  }) async {
    await dotenv.load(fileName: ".env");
    final googleApiKey = dotenv.env['GOOGLE_API_KEY'];

    print("TESTE generateLocationPreviewImage");
    print(latitude);
    print(longitude);
    print(googleApiKey);

    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$googleApiKey';
  }

  Future<String?> getAddressFrom(LatLng position) async {
    await dotenv.load(fileName: ".env");
    final googleApiKey = dotenv.env['GOOGLE_API_KEY'];
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$googleApiKey');
    final response = await http.get(url);

    print("TESTE getAddressFrom");
    print(position);
    print(json.decode(response.body));

    return json
        .decode(response.body)['results'][0]['formatted_address']
        .toString();
  }
}
