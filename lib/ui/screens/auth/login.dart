import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/data/api/login_api.dart';
import 'package:riverpod_practive/data/model/login/login_model.dart';
import 'package:riverpod_practive/main.dart';
import 'package:riverpod_practive/ui/widgets/c_button.dart';
import 'package:riverpod_practive/ui/widgets/c_textform.dart';



class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    final userLoginApi = ref.watch(UserLoginProvider(LoginModel(email: emailController.text, password: passwordController.text, remember: isChecked!)));
    print("userloginapitesting $userLoginApi");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children:[
              const SizedBox(height: 100),
              CTextFormField(
                hintText: 'email',
                controller: emailController,
              ),
              const SizedBox(height: 30),
              CTextFormField(
                 hintText: 'password',
                 controller: passwordController,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    isError: true,
                    tristate: false,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  const Text('Remember me')
                ],
              ),
              CButton(
                 height: 55,
                 width: double.infinity,
                 title: 'Login',
                 child: userLoginApi.when(data: (data){
                  print("dataaaaa $data");
                  return null;
                 },
                 error: ((error, stackTrace) => null),
                 loading: () {

                 }
                 ),
                onPressed:() {
                 // ref.read(loginApiProvider).userLogin(LoginModel(email: emailController.text, password: passwordController.text, remember: isChecked!));
                     ref.read(UserLoginProvider(LoginModel(email: emailController.text, password: passwordController.text, remember: isChecked!)));
                },
              )
            ],
          ),
        )
      ),
    );
  }
}