import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riveropod_counter/model/home_page_state.dart';

class HomePageNotifier extends StateNotifier<HomePageState> {
  //初期値の指定
  HomePageNotifier() : super(const HomePageState());

  //メインアカウントを+1する
  void increaseMainCount() async {
    state = state.copyWith(mainCount: state.mainCount + 1);
  }

  // サブアカウントを+1する
  void increaseSubCount() async {
    state = state.copyWith(subCount: state.subCount + 1);
  }

  //全てのカウントを0に戻す
  void resetAllCount() async {
    state = state.copyWith(
      mainCount: 0,
      subCount: 0,
    );
  }
}

//HomePageNotifierの状態を管理する
final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageNotifier, HomePageState>(
  (ref) => HomePageNotifier(),
);
