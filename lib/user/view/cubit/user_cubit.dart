import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:developer' as developer;

import 'package:restaurant_app/shared/app_enum.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  Stream<String?> getStreamUsername({required String firebaseAuth}) {
    return FirebaseFirestore.instance
        .collection('user')
        .doc(firebaseAuth)
        .snapshots()
        .map((DocumentSnapshot<Map<String, dynamic>> doc) {
      Map<String, dynamic>? data = doc.data();
      return data?['username'];
    });
  }

  Future<void> saveUsername(
      {required String firebaseAuth, required String username}) async {
    emit(state.copyWith(blocState: BlocState.loading));
    try {
      await FirebaseFirestore.instance
          .collection('user')
          .doc(firebaseAuth)
          .set({'username': username});
      emit(state.copyWith(
        blocState: BlocState.success,
        username: username,
      ));
    } catch (e) {
      developer.log("Issue listenToFirebaseAndFirestore() : $e");
      emit(state.copyWith(blocState: BlocState.error));
    }
  }

  void listenToFirebaseAndFirestore() {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User? user) async {
        if (user == null) {
          await FirebaseAuth.instance.signInAnonymously();
        } else {
          emit(state.copyWith(firebaseAuth: user.uid));
          await FirebaseFirestore.instance.collection('user').doc(user.uid).set(
            {},
            SetOptions(merge: true),
          );
          getStreamUsername(firebaseAuth: user.uid).listen((String? username) {
            emit(state.copyWith(username: username));
          }, onError: (_) => {});
        }
      });
    } catch (e) {
      developer.log("Issue listenToFirebaseAndFirestore() : $e");
    }
  }
}
