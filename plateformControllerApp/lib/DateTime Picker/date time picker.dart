import 'package:flutter/material.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({Key? key}) : super(key: key);

  @override
  State<DateTimePage> createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  DateTime? pickedDate;
  TimeOfDay? pickedTime;
  DateTime intialDate = DateTime.now();
  TimeOfDay intialTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${intialDate.day} // ${intialDate.month} // ${intialDate.year}",
              style: const TextStyle(fontSize: 30, color: Colors.orange),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  pickedDate = await showDatePicker(
                    builder: (context, _) {
                      return Theme(
                        data: ThemeData(
                          colorScheme: const ColorScheme.light(
                            primary: Colors.amberAccent,
                            onPrimary: Colors.redAccent,
                            onSurface: Colors.blueAccent,
                          ),
                        ),
                        child: _!,
                      );
                    },
                    context: context,
                    initialDate: intialDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030),
                  );

                  if (pickedDate != null) {
                    setState(() {
                      intialDate = pickedDate!;
                    });
                  }
                },
                child: const Text("DateTime Picker")),
            const SizedBox(
              height: 50,
            ),
            Text(
              (intialTime.hour <= 12)
                  ? "${intialTime.hour} // ${intialTime.minute} // ${intialTime.period.name}"
                  : "${intialTime.hour - 12} // ${intialTime.minute} // ${intialTime.period.name}",
              style: const TextStyle(fontSize: 30, color: Colors.orange),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () async {
                  pickedTime = await showTimePicker(
                      context: context,
                      initialTime: intialTime,
                      builder: (BuildContext, _) {
                        return Theme(
                          data: ThemeData(
                              timePickerTheme: TimePickerThemeData(
                                  dialBackgroundColor: Colors.orange,
                                  dialHandColor: Colors.black.withOpacity(0.8),
                                  hourMinuteTextColor: Colors.orange)),
                          child: _!,
                        );
                      });

                  if (intialTime != null) {
                    setState(() {
                      intialTime = pickedTime!;
                    });
                  }
                },
                child: const Text("Time Picker")),
            Theme(
                data: ThemeData(
                    colorScheme: ColorScheme.light(
                        primary: Colors.amber,
                        onPrimary: Colors.red,
                        onSurface: Colors.red)),
                child: ElevatedButton(
                  child: Text("hello chalo"),
                  onPressed: () {},
                ))
          ],
        ),
      ),
    );
  }
}
