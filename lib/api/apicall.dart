import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:issatso_events/api/eventmodel.dart';

Future<EventModel> fetchEvents() async {
  final response =
      await http.get(Uri.http('issatso-events.up.railway.app', 'api/events'));
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return EventModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load events');
  }
}
