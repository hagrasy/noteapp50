import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp50/auth/cubit/auth_state.dart';
import 'package:noteapp50/user_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore store = FirebaseFirestore.instance;
  UserModel userModel = UserModel();

//register by email & password

  registerByEmailAndPassword(String email, String password, String name) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    userModel.email = email;
    userModel.name = name;
    userModel.id = userCredential.user!.uid;

    await store.collection('user').doc(userModel.id).set(userModel.toMap());
  }
}
