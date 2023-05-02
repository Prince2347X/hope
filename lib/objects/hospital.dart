import 'package:hope/objects/doctor.dart';

class HospitalObject {
  final String address;
  final String contact;
  final List<DoctorObject> doctors;
  final List<String> features;
  final String hospitalId;
  final String imageUrl;
  final String name;
  final List<String> specialities;
  final String website;

  HospitalObject({
    required this.address,
    required this.contact,
    required this.doctors,
    required this.features,
    required this.hospitalId,
    required this.imageUrl,
    required this.name,
    required this.specialities,
    required this.website,
  });
}
//TODO: Add fromJson and toJson methods
