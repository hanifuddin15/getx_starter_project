// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CourseModel {
  int? id;
  String? course_name;
  String? description;
  int? course_type_id;
  int? created_by;
  String? created_at;
  String? updated_at;
  String? thumbnail;
  CourseCreator? creator;
  CourseModel({
    this.id,
    this.course_name,
    this.description,
    this.course_type_id,
    this.created_by,
    this.created_at,
    this.updated_at,
    this.thumbnail,
    this.creator,
  });

  CourseModel copyWith({
    int? id,
    String? course_name,
    String? description,
    int? course_type_id,
    int? created_by,
    String? created_at,
    String? updated_at,
    String? thumbnail,
    CourseCreator? creator,
  }) {
    return CourseModel(
      id: id ?? this.id,
      course_name: course_name ?? this.course_name,
      description: description ?? this.description,
      course_type_id: course_type_id ?? this.course_type_id,
      created_by: created_by ?? this.created_by,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      thumbnail: thumbnail ?? this.thumbnail,
      creator: creator ?? this.creator,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'course_name': course_name,
      'description': description,
      'course_type_id': course_type_id,
      'created_by': created_by,
      'created_at': created_at,
      'updated_at': updated_at,
      'thumbnail': thumbnail,
      'creator': creator?.toMap(),
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      id: map['id'] != null ? map['id'] as int : null,
      course_name:
          map['course_name'] != null ? map['course_name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      course_type_id:
          map['course_type_id'] != null ? map['course_type_id'] as int : null,
      created_by: map['created_by'] != null ? map['created_by'] as int : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      thumbnail: map['thumbnail'] != null ? map['thumbnail'] as String : null,
      creator: map['creator'] != null
          ? CourseCreator.fromMap(map['creator'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseModel.fromJson(String source) =>
      CourseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CourseModel(id: $id, course_name: $course_name, description: $description, course_type_id: $course_type_id, created_by: $created_by, created_at: $created_at, updated_at: $updated_at, thumbnail: $thumbnail, creator: $creator)';
  }

  @override
  bool operator ==(covariant CourseModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.course_name == course_name &&
        other.description == description &&
        other.course_type_id == course_type_id &&
        other.created_by == created_by &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.thumbnail == thumbnail &&
        other.creator == creator;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        course_name.hashCode ^
        description.hashCode ^
        course_type_id.hashCode ^
        created_by.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        thumbnail.hashCode ^
        creator.hashCode;
  }
}

class CourseCreator {
  int? id;
  String? first_name;
  String? last_name;
  Admin? admin;
  CourseCreator({
    this.id,
    this.first_name,
    this.last_name,
    this.admin,
  });

  CourseCreator copyWith({
    int? id,
    String? first_name,
    String? last_name,
    Admin? admin,
  }) {
    return CourseCreator(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      admin: admin ?? this.admin,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'admin': admin?.toMap(),
    };
  }

  factory CourseCreator.fromMap(Map<String, dynamic> map) {
    return CourseCreator(
      id: map['id'] != null ? map['id'] as int : null,
      first_name:
          map['first_name'] != null ? map['first_name'] as String : null,
      last_name: map['last_name'] != null ? map['last_name'] as String : null,
      admin: map['admin'] != null
          ? Admin.fromMap(map['admin'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseCreator.fromJson(String source) =>
      CourseCreator.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CourseCreator(id: $id, first_name: $first_name, last_name: $last_name, admin: $admin)';
  }

  @override
  bool operator ==(covariant CourseCreator other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.admin == admin;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        admin.hashCode;
  }
}

class Admin {
  int? id;
  String? created_at;
  String? updated_at;
  int? user_id;
  String? mobile;
  String? short_description;
  String? profile_picture;
  Admin({
    this.id,
    this.created_at,
    this.updated_at,
    this.user_id,
    this.mobile,
    this.short_description,
    this.profile_picture,
  });

  Admin copyWith({
    int? id,
    String? created_at,
    String? updated_at,
    int? user_id,
    String? mobile,
    String? short_description,
    String? profile_picture,
  }) {
    return Admin(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      user_id: user_id ?? this.user_id,
      mobile: mobile ?? this.mobile,
      short_description: short_description ?? this.short_description,
      profile_picture: profile_picture ?? this.profile_picture,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'created_at': created_at,
      'updated_at': updated_at,
      'user_id': user_id,
      'mobile': mobile,
      'short_description': short_description,
      'profile_picture': profile_picture,
    };
  }

  factory Admin.fromMap(Map<String, dynamic> map) {
    return Admin(
      id: map['id'] != null ? map['id'] as int : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      user_id: map['user_id'] != null ? map['user_id'] as int : null,
      mobile: map['mobile'] != null ? map['mobile'] as String : null,
      short_description: map['short_description'] != null
          ? map['short_description'] as String
          : null,
      profile_picture: map['profile_picture'] != null
          ? map['profile_picture'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Admin.fromJson(String source) =>
      Admin.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Admin(id: $id, created_at: $created_at, updated_at: $updated_at, user_id: $user_id, mobile: $mobile, short_description: $short_description, profile_picture: $profile_picture)';
  }

  @override
  bool operator ==(covariant Admin other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.user_id == user_id &&
        other.mobile == mobile &&
        other.short_description == short_description &&
        other.profile_picture == profile_picture;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        user_id.hashCode ^
        mobile.hashCode ^
        short_description.hashCode ^
        profile_picture.hashCode;
  }
}
