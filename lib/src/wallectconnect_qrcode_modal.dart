import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_evm/src/components/qr_modal/qr_modal_web.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

import 'components/components.dart';
import 'connectors/connection_provider.dart';
import 'connectors/walletconnect_connection_provider.dart';
import 'utils/utils.dart';
import 'managers/managers.dart';

class WalletConnectQrCodeModal {
  factory WalletConnectQrCodeModal({
    WalletConnect? connector,
  }) {
    connector = connector ?? WalletConnect();

    return WalletConnectQrCodeModal._internal(connector: connector);
  }

  WalletConnect get connector => _connector;
  final WalletManager _walletManager = WalletManager.instance;

  /// Connect to a new session.
  /// [context] is needed to show the QR code dialog.
  Future<ConnectionProvider> connect(
    BuildContext context, {
    int? chainId,
  }) async {
    if (!_connector.connected) {
      await _createSessionWithModal(context, chainId: chainId);
    }

    final manager = ConnectorManager.instance;
    if (manager.provider != null) {
      return manager.provider!;
    }

    final provider = WalletConnectConnectionProvider(walletConnect: _connector);
    await provider.connect(rpcUrl: manager.rpcUrl, chainID: manager.chainId);
    return provider;
  }

  // PRIVATE
  final WalletConnect _connector;

  Future<void> openWalletApp() async {
    return await _walletManager.openWalletApp();
  }

  WalletConnectQrCodeModal._internal({
    required WalletConnect connector,
  }) : _connector = connector;

  Future<SessionStatus?> _createSessionWithModal(
    BuildContext context, {
    int? chainId,
  }) async {
    bool isDismissed = false;
    bool isError = false;
    bool sessionCreated = false;

    _walletManager.clear();

    final CancelableCompleter cancelableCompleter = CancelableCompleter();
    final Completer<SessionStatus?> completer = Completer();

    Future<SessionStatus?> createSession() async {
      try {
        final session = await _connector.createSession(
            chainId: chainId,
            onDisplayUri: (uri) async {
              _walletManager.update(uri: uri);
              await showDialog(
                context: context,
                useSafeArea: true,
                barrierDismissible: true,
                builder: (context) {
                  if (Utils.isAndroid) {
                    return const QrModalAndroid();
                  }
                  if (Utils.isIOS) {
                    return const QrModalIOS();
                  }
                  if (Utils.isWeb) {
                    return const QrModalWeb();
                  }
                  return const QrModalDesktop();
                },
              );

              isDismissed = true;
              if (!sessionCreated && !isError) {
                // dialog dismissed without connecting, cancel session creation
                cancelableCompleter.operation.cancel();
                completer.complete(null);
              }
            });
        return session;
      } catch (e) {
        isError = true;
        context.navigator().pop();
        rethrow;
      }
    }

    cancelableCompleter.complete(createSession());

    cancelableCompleter.operation.value.then((session) {
      sessionCreated = true;
      if (!isDismissed) {
        Navigator.of(context).pop();
      }
      if (!completer.isCompleted) {
        completer.complete(session);
      }
    }).catchError((error) {
      debugPrint(error);
      completer.completeError(error);
    });

    return completer.future;
  }
}
