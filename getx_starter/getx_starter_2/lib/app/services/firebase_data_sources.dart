// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';

// import '../models/call_model.dart';

// class FirebaseDataSources {
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   static const String _callCollection = 'call';
//   static const String _roomsCollection = 'rooms';
//   static const String _candidatesCollection = 'candidates';
//   static const String _candidateUidField = 'uid';

//   Future<void> callUser(
//       {required String receiverUserId, required CallModel callModel}) async {
//     await _db.collection(_callCollection).doc(receiverUserId).set(
//           callModel.toMap(),
//         );
//   }

//   Stream<CallModel?> getIncommingCall(String userId) {
//     debugPrint('getIncommingCall: $userId');
//     final Stream<DocumentSnapshot<Map<String, dynamic>>> documentSnapshots =
//         _db.collection(_callCollection).doc(userId).snapshots();

//     Stream<CallModel?> userSnapshots = documentSnapshots.map(
//         (documentSnapshot) => documentSnapshot.data() != null
//             ? CallModel.fromMap(documentSnapshot.data()!)
//             : null);

//     return userSnapshots;
//   }

//   Future<void> deleteCall(String id) async {
//     await _db.collection(_callCollection).doc(id).delete();
//   }

//   Future<String> createRoom({
//     required String roomId,
//     required RTCSessionDescription offer,
//   }) async {
//     final roomRef = _db.collection(_roomsCollection).doc(roomId);
//     final roomWithOffer = <String, dynamic>{'offer': offer.toMap()};

//     await roomRef.set(roomWithOffer);
//     return roomRef.id;
//   }

//   Future<void> addCandidateToRoom({
//     required String roomId,
//     required String userId,
//     required RTCIceCandidate candidate,
//   }) async {
//     final roomRef = _db.collection(_roomsCollection).doc(roomId);
//     final candidatesCollection = roomRef.collection(_candidatesCollection);
//     await candidatesCollection
//         .add(candidate.toMap()..[_candidateUidField] = userId);
//   }

//   Stream<RTCSessionDescription?> getRoomDataStream({required String roomId}) {
//     final snapshots = _db.collection(_roomsCollection).doc(roomId).snapshots();
//     final filteredStream = snapshots.map((snapshot) => snapshot.data());
//     return filteredStream.map(
//       (data) {
//         if (data != null && data['answer'] != null) {
//           return RTCSessionDescription(
//             data['answer']['sdp'],
//             data['answer']['type'],
//           );
//         } else {
//           return null;
//         }
//       },
//     );
//   }

//   Stream<List<RTCIceCandidate>> getCandidatesAddedToRoomStream({
//     required String roomId,
//     required String userId,
//     required bool listenCaller,
//   }) {
//     final snapshots = _db
//         .collection(_roomsCollection)
//         .doc(roomId)
//         .collection(_candidatesCollection)
//         .where(_candidateUidField, isNotEqualTo: userId)
//         .snapshots();

//     final convertedStream = snapshots.map(
//       (snapshot) {
//         final docChangesList = listenCaller
//             ? snapshot.docChanges
//             : snapshot.docChanges
//                 .where((change) => change.type == DocumentChangeType.added);
//         return docChangesList.map((change) {
//           final data = change.doc.data() as Map<String, dynamic>;
//           return RTCIceCandidate(
//             data['candidate'],
//             data['sdpMid'],
//             data['sdpMLineIndex'],
//           );
//         }).toList();
//       },
//     );

//     return convertedStream;
//   }

//   Future<RTCSessionDescription?> getRoomOfferIfExists({
//     required String roomId,
//   }) async {
//     final roomDoc = await _db.collection(_roomsCollection).doc(roomId).get();
//     if (!roomDoc.exists) {
//       return null;
//     } else {
//       final data = roomDoc.data() as Map<String, dynamic>;
//       final offer = data['offer'];
//       return RTCSessionDescription(offer['sdp'], offer['type']);
//     }
//   }

//   Future<void> setAnswer({
//     required String roomId,
//     required RTCSessionDescription answer,
//   }) async {
//     final roomRef = _db.collection(_roomsCollection).doc(roomId);
//     final answerMap = <String, dynamic>{
//       'answer': {'type': answer.type, 'sdp': answer.sdp}
//     };
//     await roomRef.update(answerMap);
//   }

//   Future<void> clearRomm(String roomId) async {
//     await _db.collection(_roomsCollection).doc(roomId).delete();
//     await _db
//         .collection(_roomsCollection)
//         .doc(roomId)
//         .collection(_candidatesCollection)
//         .get()
//         .then((snapshot) {
//       for (DocumentSnapshot candidates in snapshot.docs) {
//         candidates.reference.delete();
//       }
//     });
//   }
// }
