import 'package:call_me_maybe/models/contact_info.dart';
import './contact_info.dart';
import './prior_position.dart';

class ResumeDetails {
  final ContactInfo contact;
  final List<PriorPosition> positions;

  ResumeDetails({required this.contact, required this.positions});

  ContactInfo get getContact => contact;
  String get getName => contact.getName;
  String get getEmail => contact.email;
  String get getShortUrl => contact.shortUrl;
  String getJobTitle(index) => positions[index].jobTitle;
  String getCompany(index) => positions[index].company;
  String getEmploymentDates(index) => positions[index].employmentDates;
  String getLocation(index) => positions[index].location;
  String getDescription(index) => positions[index].description;
}
