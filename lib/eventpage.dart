import 'package:flutter/material.dart';
import 'package:issatso_events/widgets/icontile.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Event Details',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(111, 209, 214, 214),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.bookmark,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/liltech.jpg"),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Muses Band Music Concert",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconTile(
                      icon: Icons.calendar_month,
                      title: "12th June 2021",
                      subtitle: "10:00 AM",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconTile(
                      icon: Icons.location_on,
                      title: "Amphi Laatiri",
                      subtitle: "Taffela City",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileTile(
                        image: 'assets/helmi.jpeg',
                        title: "Med Helmi Essouaied",
                        subtitle: 'Organizer'),
                    SizedBox(
                      height: 20,
                    ),
                    //add a subtitle about event
                    Text(
                      "About Event",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "The Muses Band is a Tunisian band that plays a variety of music genres, including jazz, blues, rock, and pop. The band was formed in 2016 by a group of friends who shared a passion for music. The band has performed in many events and festivals, including the International Festival of Carthage, the International Festival of Hammamet, and the International Festival of Sousse.",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
