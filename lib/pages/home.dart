import 'package:flutter/material.dart';
import 'package:issatso_events/widgets/bottomappbar.dart';
import 'package:issatso_events/widgets/drawer.dart';
import 'package:issatso_events/widgets/event_card.dart';
import 'package:issatso_events/widgets/nearbywidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      drawer: const SideDrawer(),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color(0xff00CEC1),
        centerTitle: true,
        title: Image.asset(
          'assets/IE.png',
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_active,
              size: 30,
            ),
            onPressed: () {},
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
            const AppbarBottom(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '  Upcoming Events',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All>>  ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 119, 119, 119),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Upcoming Events
            SizedBox(
              height: 300,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                SizedBox(
                  width: 20,
                ),
                EventCard(),
                SizedBox(
                  width: 20,
                ),
                EventCard(),
                SizedBox(
                  width: 20,
                ),
                EventCard(),
                SizedBox(
                  width: 20,
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '    Nearby You',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NearbyWidget(),
            const SizedBox(
              height: 20,
            ),
            const NearbyWidget(),
            const SizedBox(
              height: 20,
            ),
            const NearbyWidget(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
