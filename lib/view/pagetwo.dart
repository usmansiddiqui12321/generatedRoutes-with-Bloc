import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubit/secondcubit.dart';

import '../Routes/routes_name.dart';

class Pagetwo extends StatelessWidget {
  final String title;
  const Pagetwo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RoutesNames.pagethree,
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<SecondCubit, int>(
            builder: (context, state) {
              return Text(
                state.toString(),
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<SecondCubit>(context).increament();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
