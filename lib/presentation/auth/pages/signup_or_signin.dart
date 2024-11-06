import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyek_pam/common/widgets/button/basic_app_button.dart';
import 'package:proyek_pam/core/configs/assets/app_images.dart';
import 'package:proyek_pam/core/configs/assets/app_vectors.dart';

class SignupOrSigninPage  extends StatelessWidget {
  const SignupOrSigninPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment:Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.toPattern
            ),
          ),
           Align(
            alignment:Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern
            ),
          ),
          Align(
            alignment:Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBG
            )
            ),
            Align(
            alignment:Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppVectors.logo
                ),
                const SizedBox(
                  height: 55,
                  ),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26
                  ),
                ),
                const SizedBox(
                  height: 21,
                  ),
                   const Text(
                  'Sotrify adalah sebuah nama yang berasal dari salah satu rekan kami yang berarti : Saudara tiri Spotify',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17
                  ),
                  textAlign: TextAlign.center,
                ),
                 const SizedBox(
                  height: 30,
                  ),

                  Row(
                    children: [
                      Expanded(
                      flex: 1,
                      child: BasicAppButton(
                        onPressed: (){},
                        title: 'Register'
                        ),
                      )
                    ],
                  )
              ],
            )
            )
        ],
      ),
    );
  }
}