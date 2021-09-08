import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String? _subjectText = '',
      _startTimeText = '',
      _endTimeText = '',
      _dateText = '',
      _timeDetails = '';

  void calendarTapped(CalendarTapDetails details) {
    if (details.targetElement == CalendarElement.appointment ||
        details.targetElement == CalendarElement.agenda) {
      final Appointment appointmentDetails = details.appointments![0];
      _subjectText = appointmentDetails.subject;
      _dateText = DateFormat('MMMM dd, yyyy')
          .format(appointmentDetails.startTime)
          .toString();
      _startTimeText =
          DateFormat('hh:mm a').format(appointmentDetails.startTime).toString();
      _endTimeText =
          DateFormat('hh:mm a').format(appointmentDetails.endTime).toString();
      _timeDetails = '$_startTimeText - $_endTimeText';
    } else if (details.targetElement == CalendarElement.calendarCell) {
      _subjectText = "No Events";
      _dateText = DateFormat('MMMM dd, yyyy').format(details.date!).toString();
      _timeDetails = '';
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Container(child: new Text('$_subjectText')),
            content: Container(
              height: 80,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '$_dateText',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Text(_timeDetails!,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              new ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text('Close'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Lorem ipsum Schedule"),
      ),
      body: SfCalendar(
        view: CalendarView.week,
        dataSource: MeetingDataSource(getAppointment(context)),
        initialDisplayDate: DateTime(2021, 8, 2),
        selectionDecoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.red, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          shape: BoxShape.rectangle,
        ),
        onTap: calendarTapped,
        todayHighlightColor: Colors.red,
        showNavigationArrow: true,
        showCurrentTimeIndicator: true,
      ),
    );
  }
}

List<Appointment> getAppointment(BuildContext context) {
  List<Appointment> meeting = <Appointment>[
    Appointment(
        startTime: DateTime(2021, 8, 2, 9, 0, 0),
        endTime: DateTime(2021, 8, 2, 10, 0, 0),
        subject: "Lorem Ipsum",
        notes: "Lorem Ipsum",
        color: Theme.of(context).accentColor,
        location: "Lorem Ipsum"),
    Appointment(
        startTime: DateTime(2021, 8, 2, 10, 0, 0),
        endTime: DateTime(2021, 8, 2, 11, 0, 0),
        subject: "dolor sit",
        notes: "dolor sit",
        color: Theme.of(context).accentColor,
        location: "dolor sit"),
    Appointment(
        startTime: DateTime(2021, 8, 2, 11, 0, 0),
        endTime: DateTime(2021, 8, 2, 12, 0, 0),
        subject: "amet, consectetur",
        notes: "amet, consectetur",
        color: Theme.of(context).accentColor,
        location: "amet, consectetur"),
    Appointment(
        startTime: DateTime(2021, 8, 2, 12, 0, 0),
        endTime: DateTime(2021, 8, 2, 13, 0, 0),
        subject: "adipiscing elit,",
        notes: "adipiscing elit,",
        color: Theme.of(context).accentColor,
        location: "adipiscing elit,"),
    Appointment(
        startTime: DateTime(2021, 8, 2, 13, 0, 0),
        endTime: DateTime(2021, 8, 2, 14, 0, 0),
        subject: "sed do eiusmod",
        notes: "sed do eiusmod",
        color: Theme.of(context).accentColor,
        location: "sed do eiusmod"),
  ];

  return meeting;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
