import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_switching/presentation/theme_bloc/theme_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool themeState = false;
  @override
  Widget build(BuildContext context) {
    bool val = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch theme'),
        actions: [
          Switch(
            value: themeState,
            onChanged: (value) {
              setState(() {
                themeState = value;
              });
              BlocProvider.of<ThemeBloc>(context).add(ChangeTheme());
            },
          )
        ],
      ),
      body: const Center(child: Text('Hello world')),
    );
  }
}
