import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String photoUrl;
  final String displayName;
  final String phoneNumber;
  final String aboutMe;

  UserModel({
    required this.id,
    required this.photoUrl,
    required this.displayName,
    required this.phoneNumber,
    required this.aboutMe,
  });
  
  @override
  List<Object> get props => [id, photoUrl, displayName, phoneNumber, aboutMe];
}
