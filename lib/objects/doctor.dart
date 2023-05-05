class DoctorObject {
  final String doctorId;
  final String imageUrl;
  final bool isAvailable;
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

  factory DoctorObject.fromJson(Map<String, dynamic> json) {
    return DoctorObject(
      doctorId: json['doctorId'],
      imageUrl: json['imageUrl'],
      isAvailable: json['isAvailable'],
      license: json['license'],
      name: json['name'],
      qualification: json['qualification'],
      specializations: json['specializations'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'doctorId': doctorId,
      'imageUrl': imageUrl,
      'isAvailable': isAvailable,
      'license': license,
      'name': name,
      'qualification': qualification,
      'specializations': specializations,
    };
  }
}
