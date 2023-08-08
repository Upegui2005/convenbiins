import 'package:covenbiins/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:covenbiins/app/presentation/widgets/links_common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:covenbiins/app/presentation/views/login/widgets/login_divider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../register/register_view.dart';


class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();

  LoginView({super.key});

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
                SvgPicture.asset('assets/images/MyMarca.svg',
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),
                  alignment: Alignment.topCenter,
                  width: 180,
                ),

                Text('Login',
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
                  hintText: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,
                  controller: _visiblePassword,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> ForgotPasswordView()
                              ),
                            );
                          },
                          child: Text('Forgot your password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //Button
                MyButtonForm(
                  text: 'Login',
                  onTab: (){
                    print('Email Address: ${_emailAddress.text}');
                    print('Password: ${_visiblePassword.text}');
                  },
                ),
                const SizedBox(height: 20,),
                //Divider
                const LoginDivider(),
                const SizedBox(height: 20,),
                //Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButton(
                        onTap: (){},
                        imagePath: 'assets/icons/facebook.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButton(
                      onTap: (){},
                      imagePath: 'assets/icons/google.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButton(
                      onTap: (){},
                      imagePath: 'assets/icons/twitter.png',
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=> RegisterView()
                                ),
                            );
                          },
                          child: Text('Sing Up',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
   );
  }
}
