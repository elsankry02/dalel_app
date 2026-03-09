import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_btn.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/utils/extensions/extensions.dart';
import '../../../../../core/utils/themes/app_colors.dart';
import '../widget/already_have_account_widget.dart';
import '../widget/terms_and_condition_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailAddressController.dispose();
    passWordController.dispose();
    super.dispose();
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsetsDirectional.only(
            top: context.h * 0.200,
            start: context.h * 0.024,
            end: context.h * 0.024,
          ),
          children: [
            Text(
              context.tr("welcome"),
              style: context.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: .center,
            ),
            SizedBox(height: context.h * 0.060),
            CustomTextFormField(
              labelText: context.tr("first_name"),
              controller: firstNameController,
            ),
            SizedBox(height: context.h * 0.030),
            CustomTextFormField(
              labelText: context.tr("last_name"),
              controller: lastNameController,
            ),
            SizedBox(height: context.h * 0.030),
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
            SizedBox(height: context.h * 0.020),
            TermsAndConditionWidget(),
            SizedBox(height: context.h * 0.120),
            CustomPrimaryBtn(
              title: context.tr("sign_up"),
              textStyle: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            SizedBox(height: context.h * 0.016),
            AlreadyHaveAccountWidget(),
          ],
        ),
      ),
    );
  }
}
