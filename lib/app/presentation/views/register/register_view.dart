import 'package:covenbiins/app/presentation/views/register/widgets/my_check_box.dart';
import 'package:covenbiins/app/presentation/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covenbiins/app/presentation/widgets/my_button_form.dart';

import '../../../config/security/encript.dart';

class RegisterView extends StatefulWidget {

  static const String name = 'register_view';

  const RegisterView({
    super.key
  });

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();
  final _confirmPassword = TextEditingController();

  bool _checkBox      = false;

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
                  textInputType: TextInputType.confirmPassword,
                  obscureText: true,
                  suffixIcon: false,
                  controller: _confirmPassword,
                ),
                const SizedBox(height: 20,),
                MyCheckBox(
                    value: _checkBox,
                    onChanged: (bool? value){
                      setState(() {
                        _checkBox = value!;
                      });
                    },
                  ),
                //Button
                MyButtonForm(
                  text: 'Registrarme',
                  onTab: (){
                    if(_checkBox==false){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('You must accept the terms and conditions'),
                            backgroundColor: Theme.of(context).colorScheme.error,
                            duration: const Duration(seconds: 2),
                          )
                      );
                    }else{
                      print(encript(_visiblePassword.text));
                      print(encript(_confirmPassword.text));
                      if(_visiblePassword.text==_confirmPassword.text){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text('You registered'),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              duration: const Duration(seconds: 2),
                            ),
                        );
                      };
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
