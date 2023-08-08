import 'package:covenbiins/app/presentation/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covenbiins/app/presentation/widgets/my_button_form.dart';

class ForgotPasswordView extends StatelessWidget {

  static const String name = 'forgotpassword_view';

  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/MyMarca.svg',
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),
                  alignment: Alignment.topCenter,
                  width: 180,
                ),
                Text('Recuperar contraseña',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Email',
                  hintText: 'Ingresa el correo electronico',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                //Button
                MyButtonForm(
                  text: 'Enviar correo de recuperación',
                  onTab: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
