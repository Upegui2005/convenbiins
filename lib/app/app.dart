import 'package:covenbiins/app/config/router/app_route.dart';
import 'package:covenbiins/app/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/themes/theme.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //Aquí se agregan los bloc
        BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        //debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedThemeColor: 5).theme(),
        routeInformationProvider: appRouter.routeInformationProvider,
        routeInformationParser: appRouter.routeInformationParser,
        routerDelegate: appRouter.routerDelegate,

      ),
    );
  }
}
