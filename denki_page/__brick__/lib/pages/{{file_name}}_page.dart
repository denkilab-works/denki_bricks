import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
{{#auto_route}}
import 'package:flutter_bloc/flutter_bloc.dart';
{{/auto_route}}

{{#stateful}}
@RoutePage()
class {{name}}Page extends StatefulWidget {{#auto_route}}implements AutoRouteWrapper {{/auto_route}}{

  const {{name}}Page({super.key});

  {{#auto_route}}
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: const [
        //TODO inject your BLoCs here
    ],
    child: this,
  );
  {{/auto_route}}

  @override
  State<{{name}}Page> createState() => _{{name}}State();
}

class _{{name}}State extends State<{{name}}Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => const Placeholder();
}
{{/stateful}}
{{#stateless}}
@RoutePage()
class {{name}}Page extends StatelessWidget {{#auto_route}}implements AutoRouteWrapper {{/auto_route}}{

  const {{name}}Page({super.key});

  {{#auto_route}}
  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
        //TODO inject your BLoCs here
    ],
    child: this,
  );
  {{/auto_route}}

  @override
  Widget build(BuildContext context) => const Placeholder();
}
{{/stateless}}
