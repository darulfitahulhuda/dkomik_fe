// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      id: json['id'] as String,
      isRead: json['isRead'] as bool,
      image: (json['image'] as List<dynamic>).map((e) => e as String).toList(),
      createAt: json['createAt'] as int,
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'isRead': instance.isRead,
      'image': instance.image,
      'createAt': instance.createAt,
    };
