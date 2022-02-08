import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NDetailsPage.dart';

class NOpenContainerWrapper extends StatelessWidget {
  const NOpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (context, openContainer) => const NDetailsPage(),
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}
