import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../containers/circular_container.dart';
import '../curved_edges/curved_edges_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
  super.key,
  required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(

      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                right: -250,
                top: -180,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withAlpha((0.1 * 255).toInt()),
                ),
              ),
              Positioned(
                top: 90,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withAlpha((0.1 * 255).toInt()),
                ),
              ),
              child,

            ],
          ),
        ),
      ),
    );
  }
}
