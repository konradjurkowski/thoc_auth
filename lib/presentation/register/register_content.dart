import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/presentation/register/ise/register_ise.dart';
import 'package:thoc_auth/utils/helpers.dart';
import 'package:thoc_auth/utils/validation_error_ext.dart';
import 'package:thoc_widgets/utils/widgets_dimens.dart';
import 'package:thoc_widgets/widgets/button/default_primary_button.dart';
import 'package:thoc_widgets/widgets/other/focus_scaffold.dart';
import 'package:thoc_widgets/widgets/other/spacers.dart';
import 'package:thoc_widgets/widgets/text_field/default_input_text_field.dart';
import 'package:thoc_widgets/widgets/text_field/default_invalid_field_message.dart';
import 'package:thoc_widgets/widgets/text_field/default_text_field_label.dart';
import 'package:thoc_widgets/widgets/top_bar/default_top_bar.dart';

class RegisterContent extends StatefulWidget {
  const RegisterContent({
    required this.state,
    required this.onIntent,
    super.key,
  });

  final RegisterState state;
  final Function(RegisterIntent) onIntent;

  @override
  State<RegisterContent> createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatedPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatedPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScaffold(
      appBar: DefaultTopBar(
        title: context.authStrings.register_screen_title,
        onLeadingClick: () => widget.onIntent(RegisterIntent.backPressed()),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(WidgetsDimens.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextFieldLabel(text: context.authStrings.first_name),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _firstNameController,
              onChanged: (firstName) => widget.onIntent(RegisterIntent.firstNameChanged(firstName)),
              inputType: TextInputType.name,
              textInputAction: TextInputAction.next,
              error: widget.state.registerState.hasError,
            ),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: context.authStrings.last_name),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _lastNameController,
              onChanged: (lastName) => widget.onIntent(RegisterIntent.lastNameChanged(lastName)),
              inputType: TextInputType.name,
              textInputAction: TextInputAction.next,
              error: widget.state.registerState.hasError,
            ),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: context.authStrings.email_address),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _emailController,
              onChanged: (email) => widget.onIntent(RegisterIntent.emailChanged(email)),
              inputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              error: widget.state.registerState.hasError,
            ),
            DefaultInvalidFieldMessage(errorMessage: widget.state.emailValidation.error?.getText(context)),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: context.authStrings.password),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _passwordController,
              onChanged: (password) => widget.onIntent(RegisterIntent.passwordChanged(password)),
              inputType: TextInputType.visiblePassword,
              obscureText: widget.state.obscurePassword,
              error: widget.state.registerState.hasError,
              suffixIcon: widget.state.obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              onSuffixIconClick: () => widget.onIntent(RegisterIntent.togglePasswordVisibility()),
            ),
            DefaultInvalidFieldMessage(errorMessage: widget.state.passwordValidation.error?.getText(context)),
            const RegularSpacer(),
            DefaultTextFieldLabel(text: context.authStrings.repeat_password),
            const SmallSpacer(),
            DefaultInputTextField(
              controller: _passwordController,
              onChanged: (password) => widget.onIntent(RegisterIntent.repeatedPasswordChanged(password)),
              inputType: TextInputType.visiblePassword,
              obscureText: widget.state.obscureRepeatedPassword,
              error: widget.state.registerState.hasError,
              suffixIcon: widget.state.obscureRepeatedPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
              onSuffixIconClick: () => widget.onIntent(RegisterIntent.toggleRepeatedPasswordVisibility()),
            ),
            DefaultInvalidFieldMessage(errorMessage: widget.state.repeatedPasswordValidation.error?.getText(context)),
            const MediumSpacer(),
            DefaultPrimaryButton(
              text: context.authStrings.register_screen_sign_up,
              enabled: widget.state.isButtonEnabled(),
              loading: widget.state.registerState.isLoading,
              onClick: () {
                final intent = RegisterIntent.registerPressed(
                  firstName: _firstNameController.text,
                  lastName: _lastNameController.text,
                  email: _emailController.text,
                  password: _passwordController.text,
                  repeatedPassword: _repeatedPasswordController.text,
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
