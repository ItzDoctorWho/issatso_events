import 'package:flutter/material.dart';

class NearbyWidget extends StatefulWidget {
  const NearbyWidget({super.key});

  @override
  State<NearbyWidget> createState() => _NearbyWidgetState();
}

class _NearbyWidgetState extends State<NearbyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff00CEC1),
                  image: const DecorationImage(
                    image: AssetImage('assets/liltech.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '1ST MAY-SAT -2:00 PM',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00CEC1),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.bookmark,
                        color: Color.fromARGB(255, 234, 4, 4),
                      ),
                    ],
                  ),
                  const Text(
                    'The Muses Concert',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Organized by The Muses',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 117, 117, 120),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 117, 117, 120),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ISSATSo Amphi Laatiri',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 117, 117, 120),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
