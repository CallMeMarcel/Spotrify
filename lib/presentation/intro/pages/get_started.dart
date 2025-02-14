import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyek_pam/common/widgets/button/basic_app_button.dart';
import 'package:proyek_pam/core/configs/assets/app_images.dart';
import 'package:proyek_pam/core/configs/assets/app_vectors.dart';
import 'package:proyek_pam/core/configs/theme/app_colors.dart';
import 'package:proyek_pam/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 80,
              horizontal: 30
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImages.introBG,
                )
                )
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 80,
              horizontal: 20
            ),
            child: Column(
                children: [
                  Align(
                  alignment : Alignment.topCenter,
                  child : SvgPicture.asset(
                    AppVectors.logo
                  ),
                  ),
                  Spacer(),
                  Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  SizedBox(height: 21,), 
                  Text(
                    'Perkenalkan kami dari kelompok 13 PAM yang ingin membuat sebuah aplikasi music player yang bernama Sotrify',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40,),
                  BasicAppButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder : (BuildContext context) =>const ChooseModePage()
                        )
                      );
                    }, 
                    title: 'Get Started'
                    )
                ],
              ),
          ),
        ]
      ),
    );
  }
}