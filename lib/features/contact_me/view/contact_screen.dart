import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/states.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/core/widgets/text_field.dart';

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
  var formKey = GlobalKey <FormState> ();
  final ContactController contactController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 24, horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                controller: contactController.nameController,
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
                controller: contactController.emailController,
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
                controller: contactController.phoneController,
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
                controller: contactController.messageController,
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
                  Obx(()=> contactController.emailStates.value == RequestState.loading ? Padding(
                    padding: EdgeInsetsDirectional.only(end: 14),
                    child: LoadingWidget(),
                  ) : InkWell(
                    onTap: () async {
                      if(formKey.currentState!.validate()){
                        await contactController.sendPortfolioEmail(
                          name: contactController.nameController.text,
                          email: contactController.emailController.text,
                          phone: contactController.phoneController.text,
                          message: contactController.messageController.text,
                        );
                      }
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
      ),
    );
  }
}
