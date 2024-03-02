import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practive/ui/widgets/c_button.dart';
import 'package:riverpod_practive/ui/widgets/c_textform.dart';



class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children:[
              SizedBox(height: 100),
              CTextFormField(),
              SizedBox(height: 30),
              CTextFormField(),
              SizedBox(height: 30),
              CButton(
                title: 'Login',
              )
            ],
          ),
        )
      ),
    );
  }
}