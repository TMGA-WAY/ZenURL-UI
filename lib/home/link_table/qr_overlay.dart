import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QROverlay {
  static OverlayEntry? _overlayEntry;
  static final GlobalKey qrKey = GlobalKey();
  static void show(BuildContext context, String qrData, Offset position) {
    remove(); // Remove existing

    _overlayEntry = OverlayEntry(
      builder:
          (_) => Positioned(
            left: position.dx - 40,
            top: position.dy - 30,

            child: Material(
              color: Color.fromRGBO(63, 63, 63, 0.2),
              child: GestureDetector(
                onTap: () => remove(),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(63, 63, 63, 0.2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // QR display
                      QrImageView(
                        data: qrData,
                        version: QrVersions.auto,
                        size: 150,
                        backgroundColor: const Color.fromRGBO(218, 255, 1, 1),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          // Download PNG Button
                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            ),
                            child: const Text(
                              "Download PNG",
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Color.fromRGBO(17, 17, 19, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          SizedBox(width: 5),
                          // Cancel Button
                          ElevatedButton(
                            onPressed: () => remove(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            ),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                color: Color.fromRGBO(17, 17, 19, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  static void remove() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
