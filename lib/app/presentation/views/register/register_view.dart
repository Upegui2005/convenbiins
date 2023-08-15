import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/form_text_field.dart';
import '../../widgets/my_button_form.dart';
import '../../widgets/my_social_button.dart';
import '../login/widgets/login_divider.dart';

class RegisterView extends StatelessWidget {

  static const String name = 'register_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();


  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo
                  SvgPicture.asset('assets/images/logo1.svg',
                    alignment: Alignment.topCenter,
                    width: 180,
                  ),

                  Text('Register',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: false,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Password',
                    hintText: 'Enter again your password',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: false,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  //Form
                  //Button
                  MyButtonForm(
                    text: 'Register',
                    onTab: (){
                      print('Email Address: ${_emailAddress.text}');
                      print('Password: ${_visiblePassword.text}');
                    },
                  ),
                  //TextButton
                  const SizedBox(height: 20,),
                  const LoginDivider(),

                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MySocialButton(
                        onTap: (){},
                        imagePath: 'assets/icons/facebook.png',
                      ),
                      const SizedBox(width: 30,),
                      MySocialButton(
                          onTap: (){},
                          imagePath: 'assets/icons/google.png'
                      ),
                      const SizedBox(width: 30,),
                      MySocialButton(
                          onTap: (){},
                          imagePath: 'assets/icons/twitter.png'
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
