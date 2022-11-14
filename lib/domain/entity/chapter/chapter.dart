import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chapter.g.dart';

@JsonSerializable()
class Chapter extends Equatable {
  final String id;
  final bool isRead;
  final List<String> image;
  final int createAt;

  const Chapter({
    required this.id,
    required this.isRead,
    required this.image,
    required this.createAt,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);

  @override
  List<Object?> get props => [id, isRead, image, createAt];
}
