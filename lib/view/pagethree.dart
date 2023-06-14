import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubit/thirdcubit.dart';
import 'package:generated_routes/Routes/routes_name.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Page"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesNames.pageone);
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<ThirdCubtit, int>(
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
          BlocProvider.of<ThirdCubtit>(context).increament();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
