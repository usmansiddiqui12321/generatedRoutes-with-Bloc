import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generated_routes/Cubit/firstcubit.dart';
import 'package:generated_routes/Cubit/secondcubit.dart';
import 'package:generated_routes/Cubit/thirdcubit.dart';
import 'package:generated_routes/Routes/routes_name.dart';
import 'package:generated_routes/view/pageone.dart';
import 'package:generated_routes/view/pagethree.dart';
import 'package:generated_routes/view/pagetwo.dart';

class Routes {
  static Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.pageone:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => FirstCubtit(),
            child: const Pageone(),
          ),
        );
      case RoutesNames.pagetwo:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SecondCubit(),
            child: const Pagetwo(
              title: "Dynamic Title",
            ),
          ),
        );
      case RoutesNames.pagethree:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ThirdCubtit(),
            child: const Pagethree(),
          ),
        );
      default:
        const Scaffold(
          body: Center(
            child: Text("No such page Exists"),
          ),
        );
    }
    return null;
  }
}
