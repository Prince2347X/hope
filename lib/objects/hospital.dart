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

  factory HospitalObject.fromJson(Map<String, dynamic> json) {
    return HospitalObject(
      address: json['address'],
      contact: json['contact'],
      doctors: json['doctors'],
      features: json['features'],
      hospitalId: json['hospitalId'],
      imageUrl: json['imageUrl'],
      name: json['name'],
      specialities: json['specialities'],
      website: json['website'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'contact': contact,
      'doctors': doctors,
      'features': features,
      'hospitalId': hospitalId,
      'imageUrl': imageUrl,
      'name': name,
      'specialities': specialities,
      'website': website,
    };
  }
}

