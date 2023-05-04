import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:issatso_events/api/eventmodel.dart';

Future<String> fetchEvents() async {
  final response = await http
      .get(Uri.parse('https://issatso-events.up.railway.app/api/events/'));

  print(response.body);
  return response.body;
  // if (response.statusCode == 200) {
  //   print(response.body);
  // return EventModel.fromJson(jsonDecode(response.body));
  // } else {
  //   throw Exception('Failed to fetch Events');
  // }
}
