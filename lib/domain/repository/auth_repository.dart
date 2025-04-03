import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_core/utils/exceptions/api_exception.dart';
import 'package:thoc_core/utils/result.dart';

abstract class AuthRepository {
  Future<Result<ApiException, void>> login({
    required String email,
    required String password,
    CancelToken? cancelToken,
  });
  Future<Result<ApiException, void>> resetPassword({
    required String email,
    CancelToken? cancelToken,
  });
}

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => throw UnimplementedError());
