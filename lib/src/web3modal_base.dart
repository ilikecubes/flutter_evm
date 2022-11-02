import 'dart:async';

import 'package:flutter/material.dart';
import 'connectors/connection_provider.dart';

abstract class Web3ModalBase {
  Web3ModalBase({
    required this.context,
    required this.bridge,
    required this.name,
    required this.description,
    required this.url,
    required this.iconUrl,
  });

  final BuildContext context;

  final String bridge;
  final String name;
  final String description;
  final String url;
  final String iconUrl;

  Future<ConnectionProvider?> connect({int? chainId});
}