import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/extensions/string.dart';
import '../enum/room_event.dart';
import '../global_components/call_button.dart';
import '../models/call_model.dart';
import '../models/user_call.dart';
import '../routes/app_pages.dart';
import 'call_type.dart';

void showCallDialog({
  required CallModel callModel,
  required void Function()? onPressedEndCall,
}) {
  Get.dialog(Dialog(
    child: Container(
      height: 400,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 64,
            foregroundImage: NetworkImage(
              callModel.caller?.avatarUrl?.formateAsProfilePicture() ?? '',
            ),
          ),
          const SizedBox(height: 20),
          Text(
            callModel.caller?.fullName ?? '',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          const Text('Calling...'),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserCallIconButton(
                onPressed: onPressedEndCall,
                iconData: Icons.close,
                backgroundColor: Colors.red,
                borderWidth: 2,
              ),
              UserCallIconButton(
                onPressed: () {
                  Get.back();
                  Get.toNamed(Routes.USER_CALL, arguments: {
                    'action': RoomEvent.join,
                    'user_call': UserCall(
                      roomId: callModel.chatId ?? '',
                      userId: callModel.caller?.userId ?? '',
                      name: callModel.caller?.fullName ?? '',
                      profilePicture: callModel.caller?.avatarUrl ?? '',
                    ),
                    'call_type': getCallTypeEnumFromType(callModel.type ?? ''),
                  });
                },
                iconData: Icons.check,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  ));
}
