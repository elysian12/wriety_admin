import 'package:flutter/material.dart';
import 'package:wriety_admin/common/constants/colors.dart';
import 'package:wriety_admin/common/extensions/context_ext.dart';
import 'package:wriety_admin/common/utils/app_utils.dart';
import 'package:wriety_admin/common/widgets/app_textfield.dart';

class LoginSceeen extends StatelessWidget {
  static const String routeName = '/LoginSceeen-page';
  const LoginSceeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/background.png'),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 139.responsiveHeight(),
                right: 74.responsiveWidth(),
                bottom: 139.responsiveHeight(),
                child: const _LoginContainer()),
          ],
        ),
      ),
    );
  }
}

class _LoginContainer extends StatelessWidget {
  const _LoginContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 746.responsiveHeight(),
      width: 500.responsiveWidth(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.backGroundColor,
      ),
      padding: const EdgeInsets.all(40).copyWith(bottom: 80.responsiveHeight()),
      child: Column(
        children: [
          Text(
            'Login',
            style: context.textTheme.displayMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 94.responsiveHeight()),
          const AppTextField(
            hintText: 'Email Address',
          ),
          SizedBox(height: 60.responsiveHeight()),
          ElevatedButton(onPressed: () {}, child: const Text('Login')),
          const Spacer(
            flex: 2,
          ),
          Row(
            children: [
              const Expanded(
                child: Divider(
                  thickness: 1.5,
                  color: AppColors.primaryGreyColor,
                ),
              ),
              Text(
                '  Or via  this platform  ',
                style: context.textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryBlackColor.withOpacity(0.5),
                ),
              ),
              const Expanded(
                child: Divider(
                  thickness: 1.5,
                  color: AppColors.primaryGreyColor,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
