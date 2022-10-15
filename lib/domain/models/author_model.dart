import 'package:freezed_annotation/freezed_annotation.dart';
part 'author_model.g.dart';
part 'author_model.freezed.dart';

@freezed
class AuthorModel with _$AuthorModel {
  const AuthorModel._();
  factory AuthorModel(
    int id,
    @JsonKey(name: 'picture') String picture,
    @JsonKey(name: 'firstName') String firstName,
    @JsonKey(name: 'lastName') String lastName,
    String content,
  ) = _AuthorModel;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}

//@JsonSerializable()
//class AuthorModel {
  //const AuthorModel({
    //required this.id,
   // required this.picture,
    // this.firstName,
   // required this.lastName,
  //});
 // @JsonKey(name: 'id')
  //final int id;
 // @JsonKey(name: 'picture')
  //final String picture;
  //@JsonKey(name: 'firstName')
  //final String firstName;
  //@JsonKey(name: 'lastName')
 // final String lastName;

  ////String get name {
    //return '$firstName $lastName';
// }

  //factory AuthorModel.fromJson(Map<String, dynamic> json) =>
   //   _$AuthorModelFromJson(json);

  //Map<String, dynamic> toJson() => _$AuthorModelToJson(this);
//}
