import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thoc_auth/presentation/forgot_password/ise/forgot_password_ise.dart';
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

class ForgotPasswordContent extends StatefulWidget {
  const ForgotPasswordContent({
    required this.state,
    required this.onIntent,
    super.key,
  });

  final ForgotPasswordState state;
  final Function(ForgotPasswordIntent) onIntent;

  @override
  State<ForgotPasswordContent> createState() => _ForgotPasswordContentState();
}

class _ForgotPasswordContentState extends State<ForgotPasswordContent> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScaffold(
      appBar: DefaultTopBar(
        title: context.authStrings.register_screen_title,
        onLeadingClick: () => widget.onIntent(ForgotPasswordIntent.backPressed()),
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
              onChanged: (email) => widget.onIntent(ForgotPasswordIntent.emailChanged(email)),
              inputType: TextInputType.emailAddress,
              error: widget.state.resetState.hasError,
            ),
            DefaultInvalidFieldMessage(errorMessage: widget.state.emailValidation.error?.getText(context)),
            const MediumSpacer(),
            DefaultPrimaryButton(
              text: context.authStrings.register_screen_sign_up,
              enabled: widget.state.isButtonEnabled(),
              loading: widget.state.resetState.isLoading,
              onClick: () {
                final email = _emailController.text;
                final intent = ForgotPasswordIntent.resetPasswordPressed(email);
                widget.onIntent(intent);
              },
            ),
          ],
        ),
      ),
    );
  }
}
