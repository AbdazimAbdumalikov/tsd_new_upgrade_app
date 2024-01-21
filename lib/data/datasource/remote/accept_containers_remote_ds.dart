import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pharmacy_arrival/core/error/excepteion.dart';
import 'package:pharmacy_arrival/core/platform/network_helper.dart';
import 'package:pharmacy_arrival/data/model/product_dto.dart';

//TODO Прием контейнеров ДС
abstract class AcceptContainersRemoteDs {
  Future<List<ProductDTO>> getContaiersByAng({
    required String accessToken,
    required String number,
  });

  Future<ProductDTO> updateContainer({
    required String accessToken,
    required String name,
    required int status,
  });

  Future<String> refundContainer({
    required String accessToken,
    required List<String> names,
    required String pharmacyNumber,
    required String address,
    required String from,
    required String to,
    required double latitude,
    required double longitude,
  });
}

class AcceptContainersRemoteDsImpl extends AcceptContainersRemoteDs {
  final Dio dio;

  AcceptContainersRemoteDsImpl(this.dio);

  @override
  Future<List<ProductDTO>> getContaiersByAng({
    required String accessToken,
    required String number,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";

    try {
      final response = await dio.post(
        'https://api.sattiway.kz/api/web/accept/containers',
        data: {
          "code": number,
        },
      );

      log('##### getContainersByAng api:: ${response.statusCode}');

      if (response.statusCode == 200) {
        final responseData = response.data;

        if (responseData["status"] == "success") {
          final successMessage = (responseData["message"] as String?) ?? "Контейнер успешно отправлен";
          log(successMessage);

          // Вам нужно решить, как обработать или отобразить этот успех в вашем приложении.
          // Возможно, вы хотите вернуть пустой список, так как нет новых данных,
          // или вернуть какой-то другой показатель успеха.
          return <ProductDTO>[];
        } else {
          throw ServerException(
            message: (responseData["message"] as String?) ?? "Не удалось отправить контейнер",
          );
        }
      } else {
        throw ServerException(message: "Не удалось выполнить запрос. Статус: ${response.statusCode}");
      }
    } on DioError catch (e) {
      log('##### getContainersByAng api error::: ${e.response}, ${e.error}');
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }


  @override
  Future<ProductDTO> updateContainer({
    required String accessToken,
    required String name,
    required int status,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";

    try {
      final response = await dio.post(
        '$SERVER_/api/arrival-pharmacy/setcontainer',
        data: {"name": name, "status": status},
      );
      log('##### updateContainer api:: ${response.statusCode}');

      return ProductDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      log('##### updateContainer api error::: ${e.response}, ${e.error}');
      throw ServerException(
        message:
            (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<String> refundContainer({
    required String pharmacyNumber,
    required List<String> names,
    required String address,
    required String from,
    required String to,
    required double latitude,
    required double longitude,
    required String accessToken,
  }) async {
    dio.options.headers['authorization'] = 'Bearer $accessToken';
    dio.options.headers['Accept'] = "application/json";

    {
      final response = await dio.post(
        'https://api.sattiway.kz/api/v2/return-container',
        data: {
          "pharmacy_number": pharmacyNumber,
          "container_number": names.join(";"),
          // "address": address,
          "from": address,
          "to": to,
          "lat": latitude,
          "long": longitude,
        },
      );

      log('##### refundContainer api:: ${response.statusCode}');

      if (response.statusCode == 200) {
        if (response.data != null) {
          return response.data.toString(); // Возвращаем строку
        } else {
          throw ServerException(message: 'Пустой ответ от сервера');
        }
      } else {
        throw ServerException(
          message: 'Не удалось выполнить запрос. Статус: ${response.statusCode}',
        );
      }
    }
  }
}