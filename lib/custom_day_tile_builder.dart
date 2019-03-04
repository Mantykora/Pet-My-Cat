import 'package:calendarro/calendarro.dart';
import 'package:calendarro/default_day_tile.dart';
import 'package:flutter/material.dart';
import 'package:pet_my_cat/calendarro_custom_item.dart';

class PetDayTileBuilder extends DayTileBuilder {

  PetDayTileBuilder();

  @override
  Widget build(BuildContext context, DateTime date, DateTimeCallback onTap) {
    return PetCalendarroDayItem(date: date, calendarroState: Calendarro.of(context), onTap: onTap);
  }
}