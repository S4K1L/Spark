import '../../../core/app_export.dart';

/// This class is used in the [eventdetails_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventModel {
  Rx<String> eventTitle;
  Rx<String> eventDescriptio;
  Rx<String> id;

  EventModel({
    String eventTitle = "EduFair 2024: “Pathway to Higher Education”",
    String eventDescriptio =
    "Venue: Lecture Hall E\nTime: 9.00am - 5.00pm\nDate: 5 March 2024",
    String id = "",
  })  : eventTitle = Rx(eventTitle),
        eventDescriptio = Rx(eventDescriptio),
        id = Rx(id);
}

