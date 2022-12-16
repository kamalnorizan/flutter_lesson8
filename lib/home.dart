import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text('Android ATC Hotel'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Check-in Date: ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Text(
                      ' ${startDate.day}-${startDate.month}-${startDate.year}',
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        selectDate(context);
                      },
                      icon: const Icon(Icons.date_range)),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Check-out Date: ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Text(
                      ' ${endDate.day}-${endDate.month}-${endDate.year}',
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.blue),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        selectEndDate(context);
                      },
                      icon: const Icon(Icons.date_range)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
    );

    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }

  Future<Null> selectEndDate(BuildContext context) async {
    final DateTime? pickedEnd = await showDatePicker(
      context: context,
      initialDate: endDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
    );

    if (pickedEnd != null && pickedEnd != endDate) {
      setState(() {
        endDate = pickedEnd;
      });
    }
  }
}
