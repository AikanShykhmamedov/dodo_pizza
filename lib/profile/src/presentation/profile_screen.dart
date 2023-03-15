import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(24),
            children: [
              SvgPicture.asset(
                AppAssets.customerAndNumbers,
                width: size.width - 48,
              ),
              const SizedBox(height: 32),
              Text(
                S.of(context).profile_let_get_acquainted,
                style: Theme.of(context).textTheme.titleMedium!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                S.of(context).profile_let_get_acquainted_content,
                style: Theme.of(context).textTheme.bodyMedium!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Center(
                child: FilledButton(
                  onPressed: () {},
                  child: Text(S.of(context).profile_enter_phone_number.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
