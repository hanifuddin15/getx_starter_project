import 'dart:convert';

class UserCall {
  String roomId;
  String userId;
  String name;
  String profilePicture;

  UserCall({
    required this.roomId,
    required this.userId,
    required this.name,
    required this.profilePicture,
  });

  UserCall copyWith({
    String? roomId,
    String? userId,
    String? name,
    String? profilePicture,
  }) {
    return UserCall(
      roomId: roomId ?? this.roomId,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      profilePicture: profilePicture ?? this.profilePicture,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roomId': roomId,
      'userId': userId,
      'name': name,
      'profilePicture': profilePicture,
    };
  }

  factory UserCall.fromMap(Map<String, dynamic> map) {
    return UserCall(
      roomId: map['roomId'] as String,
      userId: map['userId'] as String,
      name: map['name'] as String,
      profilePicture: map['profilePicture'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCall.fromJson(String source) =>
      UserCall.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserCall(roomId: $roomId, userId: $userId, name: $name, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(covariant UserCall other) {
    if (identical(this, other)) return true;

    return other.roomId == roomId &&
        other.userId == userId &&
        other.name == name &&
        other.profilePicture == profilePicture;
  }

  @override
  int get hashCode {
    return roomId.hashCode ^
        userId.hashCode ^
        name.hashCode ^
        profilePicture.hashCode;
  }
}
