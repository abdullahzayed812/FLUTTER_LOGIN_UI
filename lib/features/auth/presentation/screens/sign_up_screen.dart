import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/extensions/context_extensions.dart';
import 'package:flutter_store_app/features/auth/presentation/refactors/auth_painter.dart';
import 'package:flutter_store_app/features/auth/presentation/refactors/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!
            ],
          ),
        ),
      ),
      body: const SafeArea(bottom: false, child: SignUpBody()),
    );
  }
}
