import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:walletconnect_qrcode_modal_dart/walletconnect_qrcode_modal_dart.dart';

WalletConnectQrCodeModal generateWCModal(WalletConnect? walletConnect) {
  return WalletConnectQrCodeModal(
    connector: walletConnect,
  );
}
