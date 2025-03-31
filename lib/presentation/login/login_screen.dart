import 'package:flutter/material.dart';
import 'package:thoc_auth/presentation/login/login_iss.dart';
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
  Widget build(BuildContext context) {
    return FocusScaffold(
      body: Padding(
        padding: const EdgeInsets.all(WidgetsDimens.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextFieldLabel(text: "Email Address"),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _emailController,
              inputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: "Password"),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _passwordController,
              inputType: TextInputType.visiblePassword,
            ),
            MediumSpacer(),
            DefaultPrimaryButton(
              text: "Sign in",
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
