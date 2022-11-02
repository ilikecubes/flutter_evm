import 'package:flutter/material.dart';
import 'package:walletconnect_qrcode_modal_dart/walletconnect_qrcode_modal_dart.dart';
import 'connectors/connection_provider.dart';
import 'connectors/walletconnect_connection_provider.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

import 'web3modal_base.dart';

class Web3Modal extends Web3ModalBase {
  Web3Modal({
    required BuildContext context,
    required String bridge,
    required String name,
    required String description,
    required String url,
    required String iconUrl,
  }) : super(
          context: context,
          bridge: bridge,
          name: name,
          description: description,
          url: url,
          iconUrl: iconUrl,
        ) {
    _walletConnect = WalletConnect(
      bridge: bridge,
      clientMeta: PeerMeta(
        name: name,
        description: description,
        url: url,
        icons: [iconUrl],
      ),
    );
  }

  late WalletConnect _walletConnect;

  @override
  Future<ConnectionProvider?> connect({int? chainId}) async {
    final walletConnectConnectionProvider = WalletConnectConnectionProvider(
      context: context,
      walletConnect: WalletConnectQrCodeModal(
        connector: _walletConnect,
      ),
    );
    await walletConnectConnectionProvider.connect();
    return walletConnectConnectionProvider;
  }
}
