import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/states.dart';
import 'package:portfolio/core/widgets/custom_button.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/core/widgets/text_field.dart';
import 'package:portfolio/features/contact_me/model/send_email_model.dart';

import '../../../core/app_constants.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/custom_text.dart';
import '../controller/controller.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  var formKey = GlobalKey <FormState> ();
  final ContactController contactController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              controller: nameController,
              hintText: "Full Name",
              prefix: Icons.person,
              validator: (value){
                if (value == null || value.toString().isEmpty) {
                  return "Required";
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: emailController,
              hintText: "Email",
              prefix: Icons.email,
              validator: (value){
                if (value == null || value.toString().isEmpty) {
                  return "Required";
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: phoneController,
              hintText: "Phone",
              prefix: Icons.phone_android,
              validator: (value){
                if (value == null || value.toString().isEmpty) {
                  return "Required";
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
            CustomTextFormField(
              controller: messageController,
              hintText: "Write message",
              prefix: Icons.message,
              minLines: 5,
              validator: (value){
                if (value == null || value.toString().isEmpty) {
                  return "Required";
                }
                return null;
              },
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(() => contactController.sendStates.value == RequestState.loading ? LoadingWidget() : InkWell(
                  onTap: (){
                    // if(formKey.currentState!.validate()){
                    //   contactController.sendEmail(
                    //     SendEmailModel(
                    //       name: nameController.text,
                    //       email: emailController.text,
                    //       phone: phoneController.text,
                    //       message: messageController.text
                    //     )
                    //   );
                    // }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.textSecondaryColor(context),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 8),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        CustomTextWidget(
                          text: "Send",
                          fontSize: AppConstants.personalInformationFontSize,
                          fontColor: AppColors.textTransparent,
                          fontWeight: FontWeight.w800,
                        ),
                        SizedBox(width: 6,),
                        Icon(Icons.send, size: 16, color: AppColors.textTransparent,)
                      ],
                    ),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
