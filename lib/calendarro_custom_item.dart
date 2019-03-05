import 'package:calendarro/calendarro.dart';
import 'package:calendarro/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PetCalendarroDayItem extends StatelessWidget {
  PetCalendarroDayItem({this.date, this.calendarroState, this.onTap});

  DateTime date;
  CalendarroState calendarroState;
  DateTimeCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isWeekend = DateUtils.isWeekend(date);
    var textColor = isWeekend ? Colors.grey : Colors.black;
    bool isToday = DateUtils.isToday(date);
    calendarroState = Calendarro.of(context);

    var oneDate = DateTime(2019, 3, 7);

    bool checkedDate = false;
    if(oneDate == date) {
      checkedDate = true;
    }

    bool daySelected = calendarroState.isDateSelected(date);



    BoxDecoration boxDecoration;
    if (daySelected) {
      boxDecoration = BoxDecoration(color: Colors.blue, shape: BoxShape.circle);
    } else if (isToday) {
      boxDecoration = BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          shape: BoxShape.circle);
    } else if (checkedDate) {
      boxDecoration = BoxDecoration(
       // image: DecorationImage(image: AssetImage('assets/cat_photo.jpg')),
          border: Border.all(
            color: Colors.blue,
            width: 1.0,
          ),
          shape: BoxShape.circle);
    }



    return Expanded(
        child: GestureDetector(
          child: Container(
              height: 40.0,
              decoration: boxDecoration,
              child: Center(
                  child: Text(
                    "${date.day}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: textColor),
                  ))),
          onTap: handleTap,
          behavior: HitTestBehavior.translucent,
        ));
  }

  void handleTap() {
    if (onTap != null) {
      onTap(date);
    }

    calendarroState.setSelectedDate(date);
    calendarroState.setCurrentDate(date);
  }
}