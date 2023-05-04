import 'package:flutter/material.dart';

class AppbarBottom extends StatefulWidget {
  const AppbarBottom({super.key});

  @override
  State<AppbarBottom> createState() => _AppbarBottomState();
}

class _AppbarBottomState extends State<AppbarBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff00CEC1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.search,
              size: 30,
              color: Color.fromARGB(255, 200, 255, 251),
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Search',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 200, 255, 251)),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 35,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color.fromARGB(171, 200, 255, 251),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xff7974E7),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.filter_list,
                          size: 18,
                          color: Color.fromARGB(255, 200, 255, 251),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Filter',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
