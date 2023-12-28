import 'package:flutter/material.dart';

// Classe responsável por definir transições a partir de rotas
class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // Animação de Transição para rotas especificas
    // if (settings.name == '/') {
    //   return child;
    // }

    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class CustomPageTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // Animação de Transição para rotas especificas
    // if (route.settings.name == '/') {
    //   return child;
    // }

    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
