import 'package:flutter/material.dart';

class NavigationUtils {
  NavigationUtils._();

  static move(BuildContext context, String? path) {
    Navigator.pushNamed(context, path ?? "/");
  }

  static moveWidget(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static moveWidgetResult(BuildContext context, Widget widget,
      {Function(Object?)? onValue}) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    ).then(onValue!);
  }

  static moveParams(
      BuildContext context, String? path, Map<String, dynamic> params) {
    Navigator.pushNamed(context, path ?? "/", arguments: params);
  }

  static moveArguments(BuildContext context, String? path, arguments) {
    Navigator.pushNamed(context, path ?? "/", arguments: arguments);
  }

  static moveArgumentsResult(BuildContext context, String? path, arguments,
      {Function(Object?)? onValue}) {
    Navigator.pushNamed(context, path ?? "/", arguments: arguments)
        .then(onValue!);
  }

  static moveClear(BuildContext context, String? path, {Object? arguments}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        path ?? "/", (Route<dynamic> route) => false,
        arguments: arguments);
  }

  static moveClearWidget(BuildContext context, Widget widget,
      {VoidCallback? then}) {
    Navigator.of(context)
        .pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => widget),
          (Route<dynamic> route) => false,
        )
        .then((value) => then);
  }

  static moveClearWidget2(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );
  }

  static moveReplacement(BuildContext context, Widget widget,
      {Function? then}) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => widget),
    ).then((value) {
      then;
    });
  }

  static moveReplacementNamed(BuildContext context, String? path,
      {Object? arguments}) {
    Navigator.pushReplacementNamed(
      context,
      path ?? "/",
      arguments: arguments,
    );
  }

  static moveClose(BuildContext context, String? path, {Object? arguments}) {
    Navigator.of(context)
      ..pop()
      ..pop()
      ..pushNamed(path ?? "/", arguments: arguments);
  }

  static moveCloseWidget(BuildContext context, Widget widget) {
    Navigator.of(context)
      ..pop()
      ..pop()
      ..push(MaterialPageRoute(builder: (context) => widget));
  }

  static movePopWidget(BuildContext context, Widget widget) {
    Navigator.of(context)
      ..pop()
      ..push(MaterialPageRoute(builder: (context) => widget));
  }

  static popMove(BuildContext context, String? path, {arguments}) {
    Navigator.of(context)
      ..pop()
      ..pushNamed(path ?? "/", arguments: arguments);
  }

  static close(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  static result(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  static getParams(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Map?;
    if (args != null) {
      return args;
    }

    return null;
  }

  static moveAnimation(BuildContext context, Widget widget, {Offset? start}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = start ?? const Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  static moveCloseAnimation(BuildContext context, Widget widget,
      {Offset? start}) {
    Navigator.of(context)
      ..pop()
      ..pop()
      ..push(PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = start ?? const Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
  }
}
