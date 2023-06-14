import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubit/firstcubit.dart';

import '../Routes/routes_name.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RoutesNames.pagetwo,
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
          child: BlocBuilder<FirstCubtit, int>(
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
            floatingActionButton: FloatingActionButton(onPressed: (){
        BlocProvider.of<FirstCubtit>(context).increament();
      } , child: const Icon(Icons.add),),
    );
  }
}
