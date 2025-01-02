import 'dart:convert';

class CallModel {
  String? chatId;
  String? type;
  CallerModel? caller;
  CallModel({
    this.chatId,
    this.type,
    this.caller,
  });

  CallModel copyWith({
    String? chatId,
    String? type,
    CallerModel? caller,
  }) {
    return CallModel(
      chatId: chatId ?? this.chatId,
      type: type ?? this.type,
      caller: caller ?? this.caller,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatId': chatId,
      'type': type,
      'caller': caller?.toMap(),
    };
  }

  factory CallModel.fromMap(Map<String, dynamic> map) {
    return CallModel(
      chatId: map['chatId'] != null ? map['chatId'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      caller: map['caller'] != null
          ? CallerModel.fromMap(map['caller'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallModel.fromJson(String source) =>
      CallModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CallModel(chatId: $chatId, type: $type, caller: $caller)';

  @override
  bool operator ==(covariant CallModel other) {
    if (identical(this, other)) return true;

    return other.chatId == chatId &&
        other.type == type &&
        other.caller == caller;
  }

  @override
  int get hashCode => chatId.hashCode ^ type.hashCode ^ caller.hashCode;
}

class CallerModel {
  String? username;
  String? fullName;
  String? avatarUrl;
  String? userId;
  CallerModel({
    this.username,
    this.fullName,
    this.avatarUrl,
    this.userId,
  });

  CallerModel copyWith({
    String? username,
    String? fullName,
    String? avatarUrl,
    String? userId,
  }) {
    return CallerModel(
      username: username ?? this.username,
      fullName: fullName ?? this.fullName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'fullName': fullName,
      'avatarUrl': avatarUrl,
      'userId': userId,
    };
  }

  factory CallerModel.fromMap(Map<String, dynamic> map) {
    return CallerModel(
      username: map['username'] != null ? map['username'] as String : null,
      fullName: map['fullName'] != null ? map['fullName'] as String : null,
      avatarUrl: map['avatarUrl'] != null ? map['avatarUrl'] as String : null,
      userId: map['userId'] != null ? map['userId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CallerModel.fromJson(String source) =>
      CallerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CallerModel(username: $username, fullName: $fullName, avatarUrl: $avatarUrl, userId: $userId)';
  }

  @override
  bool operator ==(covariant CallerModel other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.fullName == fullName &&
        other.avatarUrl == avatarUrl &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return username.hashCode ^
        fullName.hashCode ^
        avatarUrl.hashCode ^
        userId.hashCode;
  }
}
