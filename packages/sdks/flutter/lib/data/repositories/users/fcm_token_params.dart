import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class FCMTokenParams extends Equatable {
  final int userId;
  final String fcmToken;

  @override
  List<Object> get props => <Object>[userId, fcmToken];

  const FCMTokenParams({required this.userId, required this.fcmToken});

  Json toMap() {
    return <String, dynamic>{'fcm_token': fcmToken};
  }

  FCMTokenParams copyWith({int? userId, String? fcmToken}) {
    return FCMTokenParams(
      userId: userId ?? this.userId,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }
}
