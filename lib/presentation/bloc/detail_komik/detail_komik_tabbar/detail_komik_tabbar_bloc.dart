import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'detail_komik_tabbar_event.dart';
part 'detail_komik_tabbar_state.dart';

class DetailKomikTabbarBloc
    extends Bloc<DetailKomikTabbarEvent, DetailKomikTabbarState> {
  DetailKomikTabbarBloc() : super(DetailKomikTabbarInitial()) {
    on<DetailKomikTabbarEvent>(
        (event, emit) => emit(DetailKomikTabbarInitial()));
    on<ChapterKomikTabbar>((event, emit) => emit(DetailKomikTabbarChatper()));
  }
}
