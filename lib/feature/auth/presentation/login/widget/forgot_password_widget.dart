import 'package:dalel_app/core/router/route_names.dart';
import 'package:dalel_app/core/utils/extensions/extensions.dart';
import 'package:dalel_app/core/utils/themes/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .centerEnd,
      child: GestureDetector(
        onTap: () => context.pushNamed(RouteNames.forgetPasswordPage),
        child: Text(
          context.tr("forgot_password"),
          style: context.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.deepGrey,
          ),
        ),
      ),
    );
  }
}
