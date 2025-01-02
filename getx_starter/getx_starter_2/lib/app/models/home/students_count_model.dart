// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentsCountModel {
  int? totalStudentCount;
  int? activeStudentCount;
  StudentsCountModel({
    this.totalStudentCount,
    this.activeStudentCount,
  });

  StudentsCountModel copyWith({
    int? totalStudentCount,
    int? activeStudentCount,
  }) {
    return StudentsCountModel(
      totalStudentCount: totalStudentCount ?? this.totalStudentCount,
      activeStudentCount: activeStudentCount ?? this.activeStudentCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalStudentCount': totalStudentCount,
      'activeStudentCount': activeStudentCount,
    };
  }

  factory StudentsCountModel.fromMap(Map<String, dynamic> map) {
    return StudentsCountModel(
      totalStudentCount: map['totalStudentCount'] != null
          ? map['totalStudentCount'] as int
          : null,
      activeStudentCount: map['activeStudentCount'] != null
          ? map['activeStudentCount'] as int
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentsCountModel.fromJson(String source) =>
      StudentsCountModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'StudentsCountModel(totalStudentCount: $totalStudentCount, activeStudentCount: $activeStudentCount)';

  @override
  bool operator ==(covariant StudentsCountModel other) {
    if (identical(this, other)) return true;

    return other.totalStudentCount == totalStudentCount &&
        other.activeStudentCount == activeStudentCount;
  }

  @override
  int get hashCode => totalStudentCount.hashCode ^ activeStudentCount.hashCode;
}
