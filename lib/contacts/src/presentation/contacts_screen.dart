import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/list_button.dart';
import 'widgets/social_media_button.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    const mapSize = 184.0;

    final map = Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(
          AppAssets.map,
          width: mapSize,
          height: mapSize,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: FilledButton(
            onPressed: () {},
            child: Text(S.of(context).contactMap.toUpperCase()),
          ),
        ),
      ],
    );

    final contactOptions = Row(
      children: [
        Expanded(
          child: FilledButton.tonal(
            onPressed: () {},
            child: Text(S.of(context).contactCall.toUpperCase()),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: FilledButton.tonal(
            onPressed: () {},
            child: Text(S.of(context).contactChat.toUpperCase()),
          ),
        ),
      ],
    );

    final socialMedias = Row(
      children: [
        Expanded(
          child: SocialMediaButton(
            onPressed: () {},
            assetName: AppAssets.vk,
          ),
        ),
        Expanded(
          child: SocialMediaButton(
            onPressed: () {},
            assetName: AppAssets.youtube,
          ),
        ),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 56),
                child: map,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                S.of(context).contactSupport,
                style: Theme.of(context).textTheme.titleMedium!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
              child: contactOptions,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: socialMedias,
            ),
            const Divider(),
            ListButton(
              onPressed: () {},
              title: S.of(context).contactLegalDocuments,
            ),
            const Divider(indent: 16),
            ListButton(
              onPressed: () {},
              title: S.of(context).contactAboutApp,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
