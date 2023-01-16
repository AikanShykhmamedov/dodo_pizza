import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/main/main.dart';
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
    final isRegionSet = BlocProvider.of<RegionCubit>(context).isRegionSet;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!isRegionSet) {
        await selectRegion(context);
      }

      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const MainScreen()),
        );
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
