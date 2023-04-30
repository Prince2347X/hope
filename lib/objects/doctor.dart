class DoctorObject {
  final String doctorId;
  final String imageUrl;
  final String isAvailable;
  final String license;
  final String name;
  final String qualification;
  final List<String> specializations;

  DoctorObject({
    required this.doctorId,
    required this.imageUrl,
    required this.isAvailable,
    required this.license,
    required this.name,
    required this.qualification,
    required this.specializations,
  });
}
//TODO: Add fromJson and toJson methods
