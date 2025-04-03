import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/presentation/login/ise/login_ise.dart';
import 'package:thoc_auth/utils/helpers.dart';
import 'package:thoc_auth/utils/validation_error_ext.dart';
import 'package:thoc_widgets/utils/widgets_dimens.dart';
import 'package:thoc_widgets/widgets/button/default_primary_button.dart';
import 'package:thoc_widgets/widgets/other/auth_footer.dart';
import 'package:thoc_widgets/widgets/other/focus_scaffold.dart';
import 'package:thoc_widgets/widgets/other/spacers.dart';
import 'package:thoc_widgets/widgets/text/clickable_text.dart';
import 'package:thoc_widgets/widgets/text_field/default_input_text_field.dart';
import 'package:thoc_widgets/widgets/text_field/default_invalid_field_message.dart';
import 'package:thoc_widgets/widgets/text_field/default_text_field_label.dart';
import 'package:thoc_widgets/widgets/top_bar/default_top_bar.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({
    required this.state,
    required this.onIntent,
    super.key,
  });

  final LoginState state;
  final Function(LoginIntent) onIntent;

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
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
      appBar: DefaultTopBar(title: context.authStrings.login_screen_title),
      bottomNavigationBar: AuthFooter(
        firstPart: context.authStrings.login_screen_new_to_app(widget.state.appName),
        secondPart: " ${context.authStrings.login_screen_create_account}",
        onClick: () => widget.onIntent(LoginIntent.createAccountPressed()),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(WidgetsDimens.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextFieldLabel(text: context.authStrings.email_address),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _emailController,
              onChanged: (email) => widget.onIntent(LoginIntent.emailChanged(email)),
              inputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              error: widget.state.loginState.hasError,
            ),
            DefaultInvalidFieldMessage(errorMessage: widget.state.emailValidation.error?.getText(context)),
            const RegularSpacer(),
            Row(
              children: [
                Expanded(child: DefaultTextFieldLabel(text: context.authStrings.password)),
                ClickableText(
                  text: context.authStrings.login_screen_forgot_password,
                  onClick: () => widget.onIntent(LoginIntent.forgotPasswordPressed()),
                ),
              ],
            ),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _passwordController,
              onChanged: (password) => widget.onIntent(LoginIntent.passwordChanged(password)),
              inputType: TextInputType.visiblePassword,
              obscureText: widget.state.obscurePassword,
              error: widget.state.loginState.hasError,
              suffixIcon: widget.state.obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              onSuffixIconClick: () => widget.onIntent(LoginIntent.togglePasswordVisibility()),
            ),
            const MediumSpacer(),
            DefaultPrimaryButton(
              text: context.authStrings.login_screen_sign_in,
              enabled: widget.state.isButtonEnabled(),
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
