part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(BlocState.init) blocState,
    String? firebaseAuth,
    String? username,
  }) = _UserState;
}
