// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorModel _$$_AuthorModelFromJson(Map<String, dynamic> json) =>
    _$_AuthorModel(
      json['id'] as int,
      json['picture'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$$_AuthorModelToJson(_$_AuthorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'content': instance.content,
    };
