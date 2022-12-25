import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_evm/src/utils/utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../models/models.dart';
import 'segments.dart';

class ListSegment extends Segment {
  const ListSegment({
    required this.wallets,
    required this.onPressed,
    String title = "",
    Key? key,
  })  : _title = title,
        super(key: key);

  final String _title;
  final Future<List<Wallet>> wallets;
  final void Function(Wallet wallet) onPressed;

  @override
  Widget build(BuildContext context) {
    final walletData = useFuture(wallets);

    if (!walletData.hasData) {
      return Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Choose your preferred wallet',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: context.width() > 500 ? 2 : 1,
              childAspectRatio: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: walletData.data
                      ?.map(
                        (wallet) => GestureDetector(
                          onTap: () => onPressed(wallet),
                          child: Card(
                            child: Container(
                              color: context.theme().surface,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    wallet.name,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CachedNetworkImage(
                                    imageUrl:
                                        'https://registry.walletconnect.org/logo/sm/${wallet.id}.jpeg',
                                    height: 70,
                                    width: 70,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ),
          ),
        ),
      ],
    );
  }

  @override
  String title() => _title;

  @override
  IconData icon() => Icons.open_in_browser;
}
