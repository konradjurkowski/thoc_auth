import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/domain/repository/auth_repository.dart';
import 'package:thoc_auth/presentation/forgot_password/ise/forgot_password_ise.dart';
import 'package:thoc_core/architecture/base_controller.dart';
import 'package:thoc_core/domain/usecases/validate_email_use_case.dart';

class ForgotPasswordController extends BaseController<ForgotPasswordState, ForgotPasswordIntent, ForgotPasswordEvent> {

  @override
  ForgotPasswordState buildState() {
    _authRepository = ref.read(authRepositoryProvider);
    _validateEmail = ref.read(validateEmailUseCaseProvider);

    return const ForgotPasswordState();
  }

  late AuthRepository _authRepository;
  late ValidateEmailUseCase _validateEmail;
  final _cancelToken = CancelToken();

  @override
  void processIntent(ForgotPasswordIntent intent) {
    intent.when(
      backPressed: () => sendEvent(ForgotPasswordEvent.navigateBack()),
      emailChanged: (email) => state = state.copyWith(email: email),
      resetPasswordPressed: (email) => resetPassword(email),
    );
  }

  Future<void> resetPassword(String email) async {
    final emailValidation = _validateEmail.execute(email);
    state = state.copyWith(emailValidation: emailValidation);
    if (!emailValidation.successful) return;

    state = state.copyWith(resetState: const AsyncLoading());
    final result = await _authRepository.resetPassword(
      email: email,
      cancelToken: _cancelToken,
    );

    result.when((failure) {
      if (failure.isCanceled()) return;

      sendEvent(ForgotPasswordEvent.showError(failure));
      state = state.copyWith(resetState: AsyncError(failure, StackTrace.current));
    }, (_) {
      sendEvent(const ForgotPasswordEvent.goToLogin());
      state = state.copyWith(resetState: const AsyncData(null));
    });
  }
}

final forgotPasswordControllerProvider = NotifierProvider
    .autoDispose<ForgotPasswordController, ForgotPasswordState>(ForgotPasswordController.new);
