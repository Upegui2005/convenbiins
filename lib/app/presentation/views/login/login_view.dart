import 'package:covenbiins/app/presentation/views/login/widgets/login_divider.dart';
import 'package:covenbiins/app/presentation/views/register/register_view.dart';
import 'package:covenbiins/app/presentation/widgets/form_text_field.dart';
import 'package:covenbiins/app/presentation/widgets/my_button_form.dart';
import 'package:covenbiins/app/presentation/widgets/my_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';



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
                SvgPicture.asset('assets/images/logo1.svg',
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
                          child: Text('Forgout your password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //Form
                //Button
                MyButtonForm(
                  text: 'Login',
                  onTab: (){},
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
                const SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Dont have an account?',
                           style: TextStyle(
                             color: Theme.of(context).colorScheme.primary,
                           ),
                       ),
                       TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()));
                           },
                           child: Text('Sing Up',
                             style: TextStyle(
                               color: Theme.of(context).colorScheme.primary
                             ),
                           ),
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
