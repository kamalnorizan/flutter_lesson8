import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  var adult_number = 0.0;
  var child_number = 0.0;
  var radioValue;
  bool? bfast = true;
  bool? inet = true;
  bool? pking = true;
  bool? lunch = true;

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: const Text('Android ATC Hotel'),
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                        fontWeight: FontWeight.bold,
                      ),
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
                Row(
                  children: [
                    Text(
                      'Adults:    $adult_number',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Slider(
                          value: adult_number,
                          divisions: 6,
                          min: 0,
                          max: 6,
                          onChanged: (selected) {
                            setState(() {
                              adult_number = selected;
                            });
                          }),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Child:    $child_number',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Slider(
                          value: child_number,
                          divisions: 6,
                          min: 0,
                          max: 6,
                          onChanged: (selected) {
                            setState(() {
                              child_number = selected;
                            });
                          }),
                    ),
                  ],
                ),
                Container(
                  height: 230,
                  child: Column(
                    children: [
                      CheckboxListTile(
                        title: const Text(
                          'Breakfast (RM 20/Day)',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            bfast = value;
                          });
                        },
                        value: bfast,
                      ),
                      CheckboxListTile(
                        title: const Text(
                          'Internet (RM 5/Day)',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            inet = value;
                          });
                        },
                        value: inet,
                      ),
                      CheckboxListTile(
                        title: const Text(
                          'Parking (RM 5/Day)',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            pking = value;
                          });
                        },
                        value: pking,
                      ),
                      CheckboxListTile(
                        title: const Text(
                          'Lunch (RM 40/Day)',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onChanged: (bool? value) {
                          setState(() {
                            lunch = value;
                          });
                        },
                        value: lunch,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        groupValue: radioValue,
                        value: 'City View',
                        onChanged: (Object? value) {
                          if (value != radioValue) {
                            setState(() {
                              radioValue = value;
                            });
                          }
                        },
                      ),
                      title: const Text(
                        'City View',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        groupValue: radioValue,
                        value: 'Pool View',
                        onChanged: (Object? value) {
                          if (value != radioValue) {
                            setState(() {
                              radioValue = value;
                            });
                          }
                        },
                      ),
                      title: const Text(
                        'Pool View',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        groupValue: radioValue,
                        value: 'Garden View',
                        onChanged: (Object? value) {
                          if (value != radioValue) {
                            setState(() {
                              radioValue = value;
                            });
                          }
                        },
                      ),
                      title: const Text(
                        'Garden View',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        groupValue: radioValue,
                        value: 'Sky View',
                        onChanged: (Object? value) {
                          if (value != radioValue) {
                            setState(() {
                              radioValue = value;
                            });
                          }
                        },
                      ),
                      title: const Text(
                        'Sky View',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            confirm(context);
                          },
                          child: const Text('Search for room')),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            showSimpleSnackbar(context);
                          },
                          child: const Text('Snackbar trigger')),
                    ),
                  ],
                )
              ],
            ),
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

  void confirm(BuildContext context) {
    var alertDialog = AlertDialog(
      title: const Text(
        'Are you sure?',
        style: TextStyle(color: Colors.orange),
      ),
      content: Column(
        children: const [TextField()],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            print('ok');
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        )
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  void showSimpleSnackbar(BuildContext context) {
    Flushbar(
      duration: const Duration(seconds: 3),
      title: "This is simple flushbar",
      message: "Hey, you are a registered user now.",
    ).show(context);
  }
}
