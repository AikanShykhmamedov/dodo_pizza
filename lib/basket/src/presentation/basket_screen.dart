import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).basket),
        centerTitle: false,
      ),
      body: Center(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(24),
          children: [
            SvgPicture.asset(
              AppAssets.dogAndPizzaBox,
              width: size.width - 72,
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).basket_empty,
              style: Theme.of(context).textTheme.titleMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              S.of(context).basket_empty_content,
              style: Theme.of(context).textTheme.bodyMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              S.of(context).basket_empty_delivery,
              style: Theme.of(context).textTheme.bodyMedium!,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(S.of(context).basket_go_to_menu.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
