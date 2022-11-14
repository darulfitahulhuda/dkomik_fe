import 'package:dkomik/core/enum.dart';
import 'package:equatable/equatable.dart';

abstract class Komik extends Equatable {
  final String id;
  final String image;
  final String title;
  final TypeKomik typeKomik;

  const Komik(
      {required this.id,
      required this.image,
      required this.title,
      this.typeKomik = TypeKomik.manga});
}
