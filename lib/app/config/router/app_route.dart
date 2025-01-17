//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas

import 'package:go_router/go_router.dart';


//Archivo que contiene los links de las vistas
import 'package:covenbiins/app/presentation/views/views_links.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../presentation/views/forgot_password/forgot_ password_view.dart';


final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  // initialLocation: '/',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        if(Supabase.instance.client.auth.currentUser != null){
          return const HomeView();
        }
        else{
          return LoginView();
        }
      },
    ),
    GoRoute(
      path: '/',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => LoginView(),
    ),

    GoRoute(
        path: '/forgot_password_view',
        name: ForgotPasswordView.name,
        builder: (context, state) => ForgotPasswordView()
    ),

  ],

);


