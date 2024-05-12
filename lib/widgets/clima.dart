import 'package:flutter/material.dart';

class Clima extends StatefulWidget {
  const Clima({super.key});

  @override
  State<Clima> createState() => _ClimaState();
}

class _ClimaState extends State<Clima> {
  String selectedSection = 'Today';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Mayo 11',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ciudad: Juticalpa',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '25°C',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              selectedSection == 'Today' ? 'Soleado' : 'Semana Soleada',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'Today';
                    });
                  },
                  child: Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 20,
                      color: selectedSection == 'Today' ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSection = 'Week';
                    });
                  },
                  child: Text(
                    'This Week',
                    style: TextStyle(
                      fontSize: 20,
                      color: selectedSection == 'Week' ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            selectedSection == 'Today'
                ? const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Hora: '),
                          Text('18:00'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                          Text('25°C'),
                        ],
                      ),Column(
                        children: [
                          Text('Hora: '),
                          Text('18:00'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.cloud,
                            color: Colors.grey,
                          ),
                          Text('25°C'),
                        ],
                      ),
                    ],
                  )
                : const Column(
                ),
          ],
        ),
      ),
    );
  }

}