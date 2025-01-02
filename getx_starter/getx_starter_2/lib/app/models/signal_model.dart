// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignalModel {
  int? id; //"id": 1,
  String? title; //          "title": "Test Signal",
  String? details; //"details": "Signal Details",
  int? created_by; //          "created_by": 1,
  String? created_at; //        "created_at": "2024-12-01T11:34:13.000Z",
  String? updated_at; //         "updated_at": "2024-12-01T11:34:13.000Z",
  Creator? creator; //         "creator"
  SignalModel({
    this.id,
    this.title,
    this.details,
    this.created_by,
    this.created_at,
    this.updated_at,
    this.creator,
  });

  SignalModel copyWith({
    int? id,
    String? title,
    String? details,
    int? created_by,
    String? created_at,
    String? updated_at,
    Creator? creator,
  }) {
    return SignalModel(
      id: id ?? this.id,
      title: title ?? this.title,
      details: details ?? this.details,
      created_by: created_by ?? this.created_by,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      creator: creator ?? this.creator,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'details': details,
      'created_by': created_by,
      'created_at': created_at,
      'updated_at': updated_at,
      'creator': creator?.toMap(),
    };
  }

  factory SignalModel.fromMap(Map<String, dynamic> map) {
    return SignalModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      details: map['details'] != null ? map['details'] as String : null,
      created_by: map['created_by'] != null ? map['created_by'] as int : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      creator: map['creator'] != null
          ? Creator.fromMap(map['creator'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignalModel.fromJson(String source) =>
      SignalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignalModel(id: $id, title: $title, details: $details, created_by: $created_by, created_at: $created_at, updated_at: $updated_at, creator: $creator)';
  }

  @override
  bool operator ==(covariant SignalModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.details == details &&
        other.created_by == created_by &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.creator == creator;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        details.hashCode ^
        created_by.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        creator.hashCode;
  }
}

class Creator {
  Role? role; //"role":
  Creator({
    this.role,
  });

  Creator copyWith({
    Role? role,
  }) {
    return Creator(
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role?.toMap(),
    };
  }

  factory Creator.fromMap(Map<String, dynamic> map) {
    return Creator(
      role: map['role'] != null
          ? Role.fromMap(map['role'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Creator.fromJson(String source) =>
      Creator.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Creator(role: $role)';

  @override
  bool operator ==(covariant Creator other) {
    if (identical(this, other)) return true;

    return other.role == role;
  }

  @override
  int get hashCode => role.hashCode;
}

class Role {
  String? role; //                "role": "ADMIN"
  Role({
    this.role,
  });

  Role copyWith({
    String? role,
  }) {
    return Role(
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      role: map['role'] != null ? map['role'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Role.fromJson(String source) =>
      Role.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Role(role: $role)';

  @override
  bool operator ==(covariant Role other) {
    if (identical(this, other)) return true;

    return other.role == role;
  }

  @override
  int get hashCode => role.hashCode;
}
