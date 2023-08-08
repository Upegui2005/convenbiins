import 'package:covenbiins/app/presentation/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covenbiins/app/presentation/widgets/my_button_form.dart';

class RegisterView extends StatelessWidget {

  static const String name = 'register_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();

  RegisterView({super.key});

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
                
                Text('Register',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary
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
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,
                  controller: _visiblePassword,
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Confirmar contraseña',
                  hintText: 'Confirma la contraseña',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: false,
                  controller: _visiblePassword,
                ),
                const SizedBox(height: 20,),
                //Button
                MyButtonForm(
                  text: 'Registrarme',
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
