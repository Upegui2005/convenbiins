//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas

import 'package:covenbiins/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:go_router/go_router.dart';

//Archivo que contiene los links de las vistas
import 'package:covenbiins/app/presentation/views/views_links.dart';


final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  initialLocation: '/register',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/password',
      name: LoginView.name,
      builder: (context, state) => const ForgotPasswordView(),
    ),

  ],

);


