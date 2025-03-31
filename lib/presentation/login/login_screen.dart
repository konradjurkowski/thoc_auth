import 'package:flutter/material.dart';
import 'package:thoc_auth/presentation/login/ise/login_ise.dart';
import 'package:thoc_auth/utils/helpers.dart';
import 'package:thoc_widgets/thoc_widgets.dart';

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({
    required this.state,
    required this.onIntent,
    super.key,
  });

  final LoginState state;
  final Function(LoginIntent) onIntent;

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScaffold(
      body: Padding(
        padding: const EdgeInsets.all(WidgetsDimens.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextFieldLabel(text: context.authStrings.email_address),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _emailController,
              inputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: context.authStrings.password),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _passwordController,
              inputType: TextInputType.visiblePassword,
            ),
            MediumSpacer(),
            DefaultPrimaryButton(
              text: context.authStrings.login_screen_sign_in,
              loading: widget.state.loginState.isLoading,
              onClick: () {
                final intent = LoginIntent.loginPressed(
                  email: _emailController.text,
                  password: _passwordController.text,
                );
                widget.onIntent(intent);
              },
            ),
          ],
        ),
      ),
    );
  }
}
