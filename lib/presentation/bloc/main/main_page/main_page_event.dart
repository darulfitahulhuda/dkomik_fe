part of 'main_page_bloc.dart';

abstract class MainPageEvent extends Equatable {
  const MainPageEvent();

  @override
  List<Object> get props => [];
}

class MainPageHomeEvent extends MainPageEvent {}

class MainPageSearchEvent extends MainPageEvent {}

class MainPageDonwloadEvent extends MainPageEvent {}

class MainPageProfileEvent extends MainPageEvent {}
