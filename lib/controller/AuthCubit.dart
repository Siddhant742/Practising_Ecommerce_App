import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:practice_ecommerce/controller/AuthState.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(AuthInitialState()){

  }
}