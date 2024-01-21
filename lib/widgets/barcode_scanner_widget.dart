import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:pharmacy_arrival/core/styles/color_palette.dart';
import 'package:pharmacy_arrival/core/styles/text_styles.dart';
import 'package:pharmacy_arrival/core/utils/constants.dart';
import 'package:pharmacy_arrival/screens/goods_list/ui/widgets/specifying_number_manually.dart';
import 'package:pharmacy_arrival/screens/refund_containers/ui/widgets/specify_code_manually.dart';
import 'package:pharmacy_arrival/widgets/camera/camera_shape.dart';
import 'package:pharmacy_arrival/widgets/custom_button.dart';

import '../data/model/user.dart';

class BarcodeScannerWidget extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final double topPos;
  final bool? hasTextField;
  final User? user;
  final Function(String) callback;
  const BarcodeScannerWidget({
    super.key,
    required this.callback,
    required this.width,
    required this.height,
    required this.title,
    required this.topPos,
    this.hasTextField,
    this.user,
  });

  @override
  State<BarcodeScannerWidget> createState() => _BarcodeScannerWidgetState();
}

class _BarcodeScannerWidgetState extends State<BarcodeScannerWidget> {
  MobileScannerController controller = MobileScannerController();
  String codes = "";
  final Dio _dio = Dio();

  @override
  void dispose() {
    controller.stop();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          controller: controller,
          onDetect: (barcode, args) async {
            if (barcode.rawValue == null) {
              debugPrint('Failed to scan Barcode');
            } else {
              final String code = barcode.rawValue!;
              log("BARCODE CODE::::: $code");
              if (!codes.contains(code)) {
                codes = code;
                if (widget.user != null) {
                  try {
                    final response = await _dio.post(
                      'https://api.sattiway.kz/api/v2/return-container',
                      data: {
                        'pharmacy_number': widget.user!.warehouseName,
                        'container_number': code,
                      },
                    );
                    // Ваш код для обработки ответа от API
                    print('Response from API: ${response.data}');
                  } catch (error) {
                    // Ваш код для обработки ошибки при отправке запроса на API
                    print('Error sending data to API: $error');
                  }
                }
              }
            }
          },
        ),
        Container(
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: CameraShaper(
              paintHeight: widget.height,
              paintWidth: widget.width,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: widget.topPos,
          child: Center(
            child: Text(
              widget.title,
              style: ThemeTextStyle.textStyle16w600
                  .copyWith(color: ColorPalette.white),
            ),
          ),
        ),
        if (widget.hasTextField ?? false)
          Positioned(
            left: 16,
            right: 16,
            bottom: 15,
            child: CustomButton(
              height: 44,
              body: const Text(
                'Указать вручную',
                style: TextStyle(),
              ),
              style: pinkButtonStyle(),
              onClick: () {
                bottomSheet(
                  SpecifyCodeManually(
                    callBack: (code) {
                      widget.callback(code);
                      Navigator.pop(context);
                      controller.dispose();
                      controller.stop();
                    },
                  ),
                  context,
                );
              },
            ),
          ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 65,
          child: CustomButton(
            height: 44,
            body: const Text(
              'Сканировать',
              style: TextStyle(),
            ),
            style: pinkButtonStyle(),
            onClick: () {
              widget.callback(codes);
              controller.dispose();
              controller.stop();
            },
          ),
        ),
      ],
    );
  }
}