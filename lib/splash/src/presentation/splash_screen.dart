import 'package:auto_route/auto_route.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_router.dart';
import 'package:dodo_pizza/menu/menu.dart';
import 'package:dodo_pizza/region/region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  void _initialize() async {
    final regionCubit = context.read<RegionCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (regionCubit.isRegionSet) {
        final country = regionCubit.state!.country;
        await context.read<MenuRepository>().load(country);
      } else {
        await selectRegion(context);
      }

      if (mounted) {
        context.replaceRoute(const MainRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          AppAssets.splashPattern,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
