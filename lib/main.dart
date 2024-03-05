import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/data/api/login_api.dart';
import 'package:riverpod_practive/data/model/login/login_model.dart';
import 'package:riverpod_practive/fakeUser.dart';
//import 'package:riverpod_practive/home_screen.dart';
import 'package:riverpod_practive/ui/screens/auth/login.dart';
import 'package:riverpod_practive/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main.g.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp( const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

final counterProvider = StateProvider((ref) => 0);
final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(const User(name: '', age: "0", )));

final userChangeNotifierProvider = ChangeNotifierProvider((ref) => UserNotifierChange());

// final fetchUserProvider = FutureProvider((ref) {
//     final userRepository = ref.watch(userRepositoryProvider);
//     return userRepository.fetchUserData();
// });

@riverpod
Future<FakeUser> fetchUser(FetchUserRef ref, String input) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData(input);
}

@riverpod
Future userLogin (UserLoginRef ref, LoginModel loginModel){
  final userLogin = ref.watch(loginApiProvider);
  return userLogin.userLogin(loginModel);
}