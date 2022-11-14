import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc() : super(MainPageHome()) {
    on<MainPageHomeEvent>((event, emit) => emit(MainPageHome()));
    on<MainPageSearchEvent>((event, emit) => emit(MainPageSearch()));
    on<MainPageDonwloadEvent>((event, emit) => emit(MainPageDonwload()));
    on<MainPageProfileEvent>((event, emit) => emit(MainPageProfile()));
  }
}
