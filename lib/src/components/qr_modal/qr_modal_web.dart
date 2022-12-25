import 'package:flutter/material.dart';
import '../../managers/managers.dart';

import '../../models/models.dart';
import '../../store/store.dart';
import '../../utils/utils.dart';
import '../segments/local_injector_segment.dart';
import 'qr_modal.dart';
import '../segments/segments.dart';

class QrModalWeb extends StatelessWidget {
  const QrModalWeb({
    this.store = const WalletStore(),
    Key? key,
  }) : super(key: key);

  final WalletStore store;

  @override
  Widget build(BuildContext context) {
    final walletManager = WalletManager.instance;

    return ModalBase(
      segments: [
        const LocalInjectorSegment(),
        const QrCodeSegment(),
        ListSegment(
          wallets: desktopWallets(),
          onPressed: (wallet) {
            walletManager.update(wallet: wallet);
            Utils.desktopLaunch(wallet: wallet, uri: walletManager.uri);
          },
          title: "Desktop",
        ),
      ],
    );
  }

  Future<List<Wallet>> desktopWallets() {
    return store.load().then(
          (wallets) => wallets
              .where(
                (wallet) =>
                    Utils.linkHasContent(wallet.desktop.universal) ||
                    Utils.linkHasContent(wallet.desktop.native),
              )
              .toList(),
        );
  }
}
