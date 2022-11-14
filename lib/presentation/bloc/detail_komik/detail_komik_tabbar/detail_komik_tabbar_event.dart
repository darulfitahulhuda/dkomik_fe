part of 'detail_komik_tabbar_bloc.dart';

abstract class DetailKomikTabbarEvent extends Equatable {
  const DetailKomikTabbarEvent();

  @override
  List<Object> get props => [];
}

class DetailKomikTabbar extends DetailKomikTabbarEvent {}

class ChapterKomikTabbar extends DetailKomikTabbarEvent {}
