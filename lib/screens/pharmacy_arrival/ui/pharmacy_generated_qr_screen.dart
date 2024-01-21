import 'package:flutter/material.dart';
import 'package:pharmacy_arrival/core/styles/color_palette.dart';
import 'package:pharmacy_arrival/core/styles/text_styles.dart';
import 'package:pharmacy_arrival/data/model/pharmacy_order_dto.dart';
import 'package:pharmacy_arrival/widgets/custom_app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/network/models/dto_models/response/dto_login_response.dart';

class PharmacyGeneratedQrScreen extends StatefulWidget {
  final PharmacyOrderDTO order;

  const PharmacyGeneratedQrScreen({super.key, required this.order});

  @override
  State<PharmacyGeneratedQrScreen> createState() =>
      _PharmacyGeneratedQrScreenState();
}

class _PharmacyGeneratedQrScreenState extends State<PharmacyGeneratedQrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'QR для подписания №${widget.order.id}'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: QrImageView(
                data:
                    'mobileSign:https://tsd-aqnietgroup.kz/api/ecp/first?order_id=${widget.order.id}',),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Сканируйте QR из мобильного приложения eGov',
              style: ThemeTextStyle.textStyle18w400.copyWith(
                color: ColorPalette.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ElevatedButton(
              child: Text('Подписать для №${widget.order.id}',
                style: ThemeTextStyle.textStyle18w400.copyWith(color: ColorPalette.black,),
                textAlign: TextAlign.center,
              ),
              onPressed: () async {
                final User user;
                String url = 'https://mgovsign.page.link/?link=https://api.sattiway.kz/api/v2/egov/ttn/mgovSign?order_id%3D${widget.order.id}%26user_id%3D${widget.order.userId}%26type_sign%3DTtn&apn=kz.mobile.mgov';
                if (await canLaunch(url)) {
                  await launch(url);
                print('orderId: ${widget.order.id}, userId: ${widget.order.userId}');
                } else {
                    print("Could not launch $url");
                  }
                },
            )
          ),
        ],
      ),
    );
  }
}