import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_btn.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';
import '../widget/dont_have_account_widget.dart';
import '../widget/forgot_password_widget.dart';
import '../widget/top_login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailAddressController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  void dispose() {
    emailAddressController.dispose();
    passWordController.dispose();
    super.dispose();
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          TopLoginWidget(),
          SizedBox(height: context.h * 0.032),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  context.tr("welcomeback"),
                  style: context.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: .center,
                ),
                SizedBox(height: context.h * 0.048),
                CustomTextFormField(
                  labelText: context.tr("email_address"),
                  controller: emailAddressController,
                ),
                SizedBox(height: context.h * 0.030),
                CustomTextFormField(
                  labelText: context.tr("password"),
                  controller: passWordController,
                  obscureText: isSelected,
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Icon(
                      isSelected
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ForgotPasswordWidget(),
                SizedBox(height: context.h * 0.110),
                CustomPrimaryBtn(
                  title: context.tr("sign_in"),
                  textStyle: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: context.h * 0.016),
                DontHaveAccountWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
