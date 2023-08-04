import 'package:covenbiins/app/presentation/views/login/widgets/login_divider.dart';
import 'package:covenbiins/app/presentation/widgets/form_text_field.dart';
import 'package:covenbiins/app/presentation/widgets/my_button_form.dart';
import 'package:covenbiins/app/presentation/widgets/my_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../register/register_view.dart';

class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

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
                const MyFormTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Password',
                  hintText: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){},
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
                  onTab: (){},
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
                                    builder: (context)=> const RegisterView()
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
