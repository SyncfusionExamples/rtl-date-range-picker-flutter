import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(WorkingDirection());

class WorkingDirection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkingDirectionInPicker(),
    );
  }
}

class WorkingDirectionInPicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScheduleExample();
}

class ScheduleExample extends State<WorkingDirectionInPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      margin: const EdgeInsets.fromLTRB(40, 150, 40, 150),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: SfDateRangePicker(
            monthViewSettings: DateRangePickerMonthViewSettings(
                showTrailingAndLeadingDates: true),
          )),
    ));
  }
}
