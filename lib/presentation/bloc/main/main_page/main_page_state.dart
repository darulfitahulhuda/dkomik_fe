part of 'main_page_bloc.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object> get props => [];
}

class MainPageHome extends MainPageState {}

class MainPageSearch extends MainPageState {}

class MainPageDonwload extends MainPageState {}

class MainPageProfile extends MainPageState {}
