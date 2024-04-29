import '../../../core/app_export.dart';
import 'eventdetails_item_model.dart'; // assuming EventModel class is defined in event_model.dart

class HomeModel {
  Rx<List<EventModel>> eventdetailsItemList = Rx([
    EventModel(
      eventTitle: "EduFair 2024: “Malaysia to Higher Education”",
      eventDescriptio: "Venue: Lecture Hall E\nTime: 9.00am - 5.00pm\nDate: 5 March 2024",
    ),
  ]);
}
