// Event name, description, organizer, location, date and image banner

class EventModel {
  final String id;
  final String name;
  final String description;
  final String organizer;
  final String location;
  final String date;
  final String image;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.organizer,
    required this.location,
    required this.date,
    required this.image,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        organizer: json['organizer'],
        location: json['location'],
        date: json['date'],
        image: json['image']);
  }
}
