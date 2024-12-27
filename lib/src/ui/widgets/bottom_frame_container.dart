import 'package:document_camera_frame/document_camera_frame.dart';
import 'package:document_camera_frame/src/core/app_constants.dart';
import 'package:flutter/material.dart';

class BottomFrameContainer extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  const BottomFrameContainer({super.key, required this.width, required this.height, required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: .5.sh(context) + (height / 2),
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          width: width,
          height: AppConstants.bottomFrameContainerHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              right: BorderSide(color: Colors.white, width: 3, strokeAlign: BorderSide.strokeAlignInside),
              left: BorderSide(color: Colors.white, width: 3, strokeAlign: BorderSide.strokeAlignInside),
              top: BorderSide(color: Colors.white, width: 3, strokeAlign: BorderSide.strokeAlignInside),
              bottom: BorderSide(color: Colors.white, width: 3, strokeAlign: BorderSide.strokeAlignInside),
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(borderRadius),
              topLeft: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius),
              bottomRight: Radius.circular(borderRadius),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.credit_card_outlined, // Icon representing the ID
                color: Colors.black54,
                size: 24,
              ),
              SizedBox(width: 8),
              Text(
                'Back of ID',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Positioned(
// top: .5.sh(context) + (widget.frameHeight / 2) - 20,
// left: 0,
// right: 0,
// child: Center(
// child: Container(
// width: widget.frameWidth * 1.2, // Slightly wider than the frame
// padding: EdgeInsets.symmetric(vertical: 10),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(8),
// ),
// child: Row(
// mainAxisSize: MainAxisSize.min,
// children: [
// Icon(
// Icons.credit_card, // Icon representing the ID
// color: Colors.black54,
// size: 24,
// ),
// SizedBox(width: 8),
// Text(
// "Back of ID",
// style: TextStyle(
// color: Colors.black87,
// fontSize: 16,
// fontWeight: FontWeight.w500,
// ),
// ),
// ],
// ),
// ),
// ),
// ),
