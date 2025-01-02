import '../enum/call_type.dart';

CallType getCallTypeEnumFromType(String type) {
  switch (type) {
    case 'VIDEO':
      return CallType.VIDEO;
    case 'AUDIO':
      return CallType.AUDIO;
    default:
      return CallType.VIDEO;
  }
}
