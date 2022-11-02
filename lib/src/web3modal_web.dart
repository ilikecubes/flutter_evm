import 'package:flutter/material.dart';
import 'package:flutter_evm/src/painters/metamask_painter.dart';
import 'package:flutter_evm/src/painters/walletconnect_painter.dart';
import 'package:walletconnect_qrcode_modal_dart/walletconnect_qrcode_modal_dart.dart';
import 'connectors/connection_provider.dart';
import 'connectors/local_connection_provider.dart';
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
    ConnectionProvider? result;
    final walletConnectConnectionProvider = WalletConnectConnectionProvider(
      context: context,
      walletConnect: WalletConnectQrCodeModal(
        connector: _walletConnect,
      ),
    );
    final walletConnectionProviderLocal = LocalConnectionProvider();

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          height: 200.0,
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Select Wallet",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _ProviderButton(
                      onPressed: () {
                        result = LocalConnectionProvider();
                        Navigator.of(context).pop();
                      },
                      customPaint: metaMaskCustomPaint(100.0),
                    ),
                    _ProviderButton(
                      onPressed: () {
                        result = WalletConnectConnectionProvider(
                          context: context,
                          walletConnect: WalletConnectQrCodeModal(
                            connector: _walletConnect,
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      customPaint: walletConnectCustomPaint(100.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    await result?.connect(chainID: chainId);
    return result;
  }
}

class _ProviderButton extends StatelessWidget {
  const _ProviderButton(
      {Key? key, required this.onPressed, required this.customPaint})
      : super(key: key);

  final void Function()? onPressed;
  final CustomPaint customPaint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: SizedBox(
          height: 120.0,
          width: 120.0,
          child: Center(
            child: customPaint,
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
